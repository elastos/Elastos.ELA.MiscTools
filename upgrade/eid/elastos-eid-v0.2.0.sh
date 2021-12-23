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
  echo_info "Update eid to elastos-eid-v0.2.0">>$SCRIPT_PATH/update.log
  echo_info "">>$SCRIPT_PATH/update.log
  echo_info "$time Update eid succeeded!"
  echo_info "Please check update log via command: cat $SCRIPT_PATH/update.log"
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

  echo_info "Downloading eid..."
  wget https://download.elastos.org/elastos-eid/elastos-eid-v0.2.0/elastos-eid-v0.2.0-linux-x86_64.tgz
  wget https://download.elastos.org/elastos-eid/elastos-eid-v0.2.0/SHA256SUMS
  shasum -c SHA256SUMS
  tar xf elastos-eid-v0.2.0-linux-x86_64.tgz
  echo_info "Stopping eid..."
  $SCRIPT_PATH/node.sh eid stop
  echo_info "Replacing eid..."
  cp -v elastos-eid-v0.2.0/eid $SCRIPT_PATH/eid/

  echo_info "Removing eid spv... "
  rm -rv $SCRIPT_PATH/eid/data/header
  rm -rv $SCRIPT_PATH/eid/data/spv_transaction_info.db
  rm -rv $SCRIPT_PATH/eid/data/store

  echo_info "Starting eid..."
  $SCRIPT_PATH/node.sh eid start
  rm -rv elastos-eid-v0.2.0-linux-x86_64.tgz elastos-eid-v0.2.0.sh elastos-eid-v0.2.0 SHA256SUMS
}

SCRIPT_PATH=$(cd $(dirname $BASH_SOURCE); pwd)
upgrade_node
update_log