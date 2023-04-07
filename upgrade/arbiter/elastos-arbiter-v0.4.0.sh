#!/bin/bash

echo_error()
{
    echo -e "\033[1;31mERROR:\033[0m $1"
}

echo_info()
{
    echo -e "\033[1;34mINFO:\033[0m $1"
}

#
# update node binary
#
upgrade_node()
{
  if [ ! -f $SCRIPT_PATH/node.sh ]; then
    echo_error "$SCRIPT_PATH/node.sh is not exist"
    exit
  fi

  jq "if .Configuration.SideNodeList[0].GenesisBlock == \"56be936978c261b2e649d58dbfaf3f23d4a868274f5522cd2adb4308a955c4a3\" \
      then del(.Configuration.SideNodeList[0]) | \
      .Configuration.SideNodeList[0] |= .+ {Name: \"ESC\"} | \
      .Configuration.SideNodeList[1] |= .+ {Name: \"EID\"} | \
      .Configuration.SideNodeList[1] |= .+ {SupportQuickRecharge: true} | \
      .Configuration.SideNodeList[1] |= .+ {SupportInvalidDeposit: true} | \
      .Configuration.SideNodeList[1] |= .+ {SupportInvalidWithdraw: true} | \
      .Configuration.SideNodeList[0].SyncStartHeight = 17886000 | \
      .Configuration.SideNodeList[1].SyncStartHeight = 9611000 \
      else . end" \
      ~/node/arbiter/config.json >~/node/arbiter/config.json.tmp

  if [ "$?" == "0" ]; then
      mv ~/node/arbiter/config.json.tmp ~/node/arbiter/config.json
      echo_info "config.json file updated successfully"
  else
      echo_error "config.json file update failed"
  fi

  $SCRIPT_PATH/node.sh arbiter update
}

SCRIPT_PATH=$(cd $(dirname $BASH_SOURCE); pwd)
upgrade_node
