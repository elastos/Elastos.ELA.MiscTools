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
# record update log
#
update_log()
{
  if [ ! -f $SCRIPT_PATH/update.log ]; then
    echo_error "$SCRIPT_PATH/update.log is not exist"
    echo_info "Create update.log"
    touch $SCRIPT_PATH/update.log
  fi

  local time=$(date "+%Y-%m-%d %H:%M:%S")
  echo_info $time>>$SCRIPT_PATH/update.log
  echo_info "==========">>$SCRIPT_PATH/update.log
  echo_info "Update arbiter to elastos-arbiter-v0.3.0">>$SCRIPT_PATH/update.log
  echo_info "">>$SCRIPT_PATH/update.log
  echo_info "$time Update arbiter succeeded!"
  echo_info "Please check update log via command: cat $SCRIPT_PATH/update.log"
}

#
# update node binary
#

update_config()
{
  local ARBITER_CONFIG=${SCRIPT_PATH}/arbiter/config.json

  local SUPPORT_QUICK_RECHARGE="SupportQuickRecharge: true,"
  local SUPPORT_INVALID_DEPOSIT="SupportInvalidDeposit: true,"
  local SUPPORT_INVALID_WITHDRAW="SupportInvalidWithdraw: true,"

  echo_info "Updating arbiter config file..."
  jq ".Configuration.SideNodeList[1] |= .+ {$SUPPORT_QUICK_RECHARGE} |\
      .Configuration.SideNodeList[1] |= .+ {$SUPPORT_INVALID_DEPOSIT} |\
      .Configuration.SideNodeList[1] |= .+ {$SUPPORT_INVALID_WITHDRAW}" \
      $ARBITER_CONFIG >$ARBITER_CONFIG.tmp

  if [ "$?" == "0" ]; then
      mv $ARBITER_CONFIG.tmp $ARBITER_CONFIG
  fi

  echo_info "arbiter config file: $ARBITER_CONFIG"
}

upgrade_node()
{
  if [ ! -f $SCRIPT_PATH/node.sh ]; then
    echo_error "$SCRIPT_PATH/node.sh is not exist"
    exit
  fi

  echo_info "Downloading arbiter..."
  wget https://download.elastos.io/elastos-arbiter/elastos-arbiter-v0.3.0/elastos-arbiter-v0.3.0-linux-x86_64.tgz
  wget https://download.elastos.io/elastos-arbiter/elastos-arbiter-v0.3.0/SHA256SUMS
  shasum -c SHA256SUMS
  tar xf elastos-arbiter-v0.3.0-linux-x86_64.tgz
  echo_info "Stopping arbiter..."
  $SCRIPT_PATH/node.sh arbiter stop
  echo_info "Replacing arbiter..."
  cp -v elastos-arbiter-v0.3.0/arbiter $SCRIPT_PATH/arbiter/

  echo_info "Removing arbiter data... "
  rm -r -v $SCRIPT_PATH/arbiter/elastos_arbiter

  echo_info "Starting arbiter..."
  $SCRIPT_PATH/node.sh arbiter start
  rm -r elastos-arbiter-v0.3.0-linux-x86_64.tgz elastos-arbiter-v0.3.0.sh elastos-arbiter-v0.3.0 SHA256SUMS
}

SCRIPT_PATH=$(cd $(dirname $BASH_SOURCE); pwd)
update_config
upgrade_node
update_log