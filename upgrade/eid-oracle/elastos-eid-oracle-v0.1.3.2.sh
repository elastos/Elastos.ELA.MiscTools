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
  echo_info "Update eid-oracle to elastos-eid-oracle-v0.1.3.2">>$SCRIPT_PATH/update.log
  echo_info "">>$SCRIPT_PATH/update.log
  echo_info "$time Update eid-oracle succeeded!"
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

  if [ ! -d $SCRIPT_PATH/eid/eid-oracle ]; then
    echo_error "$SCRIPT_PATH/eid/eid-oracle is not exist"
    exit
  fi

  echo_info "Downloading eid-oracle..."
  wget https://download.elastos.io/elastos-eid-oracle/elastos-eid-oracle-v0.1.3.2/elastos-eid-oracle-v0.1.3.2.tgz
  wget https://download.elastos.io/elastos-eid-oracle/elastos-eid-oracle-v0.1.3.2/SHA256SUMS
  shasum -c SHA256SUMS
  tar xf elastos-eid-oracle-v0.1.3.2.tgz
  echo_info "Stopping eid-oracle..."
  $SCRIPT_PATH/node.sh eid-oracle stop
  echo_info "Replacing eid-oracle..."
  cp -v elastos-eid-oracle-v0.1.3.2/* $SCRIPT_PATH/eid/eid-oracle/
  echo_info "Starting eid-oracle..."
  $SCRIPT_PATH/node.sh eid-oracle start
  rm -r elastos-eid-oracle-v0.1.3.2.tgz elastos-eid-oracle-v0.1.3.2.sh elastos-eid-oracle-v0.1.3.2 SHA256SUMS
}

SCRIPT_PATH=$(cd $(dirname $BASH_SOURCE); pwd)
upgrade_node
update_log