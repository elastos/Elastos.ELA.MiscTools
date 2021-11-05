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
  echo_info "Update esc to elastos-esc-v0.1.4">>$SCRIPT_PATH/update.log
  echo_info "">>$SCRIPT_PATH/update.log
  echo_info "$time Update esc succeeded!"
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

  echo_info "Downloading esc..."
  wget https://download.elastos.org/elastos-esc/elastos-esc-v0.1.4/elastos-esc-v0.1.4-linux-x86_64.tgz
  wget https://download.elastos.org/elastos-esc/elastos-esc-v0.1.4/SHA256SUMS
  shasum -c SHA256SUMS
  tar xf elastos-esc-v0.1.4-linux-x86_64.tgz
  echo_info "Stopping esc..."
  $SCRIPT_PATH/node.sh esc stop
  echo_info "Replacing esc..."
  cp -v elastos-esc-v0.1.4/esc $SCRIPT_PATH/esc/

  echo_info "Removing esc spv... "
  rm -r -v $SCRIPT_PATH/esc/data/header
  rm -r -v $SCRIPT_PATH/esc/data/spv_transaction_info.db
  rm -r -v $SCRIPT_PATH/esc/data/store

  echo_info "Starting esc..."
  $SCRIPT_PATH/node.sh esc start
  rm -r elastos-esc-v0.1.4-linux-x86_64.tgz elastos-esc-v0.1.4.sh elastos-esc-v0.1.4 SHA256SUMS
}

SCRIPT_PATH=$(cd $(dirname $BASH_SOURCE); pwd)
upgrade_node
update_log