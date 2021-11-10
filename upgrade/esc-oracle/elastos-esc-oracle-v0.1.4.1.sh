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
  echo_info "Update esc-oracle to elastos-esc-oracle-v0.1.4.1">>$SCRIPT_PATH/update.log
  echo_info "">>$SCRIPT_PATH/update.log
  echo_info "$time Update esc-oracle succeeded!"
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

  if [ ! -d $SCRIPT_PATH/esc/esc-oracle ]; then
    echo_error "$SCRIPT_PATH/esc/esc-oracle is not exist"
    exit
  fi

  echo_info "Downloading esc-oracle..."
  wget https://download.elastos.org/elastos-esc-oracle/elastos-esc-oracle-v0.1.4.1/elastos-esc-oracle-v0.1.4.1.tgz
  wget https://download.elastos.org/elastos-esc-oracle/elastos-esc-oracle-v0.1.4.1/SHA256SUMS
  shasum -c SHA256SUMS
  tar xf elastos-esc-oracle-v0.1.4.1.tgz
  echo_info "Stopping esc-oracle..."
  $SCRIPT_PATH/node.sh esc-oracle stop
  echo_info "Replacing esc-oracle..."
  cp -v elastos-esc-oracle-v0.1.4.1/* $SCRIPT_PATH/esc/esc-oracle/
  echo_info "Starting esc-oracle..."
  $SCRIPT_PATH/node.sh esc-oracle start
  rm -r elastos-esc-oracle-v0.1.4.1.tgz elastos-esc-oracle-v0.1.4.1.sh elastos-esc-oracle-v0.1.4.1 SHA256SUMS
}

SCRIPT_PATH=$(cd $(dirname $BASH_SOURCE); pwd)
upgrade_node
update_log