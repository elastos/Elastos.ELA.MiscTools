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
  echo_info "Update ela to elastos-ela-v0.8.3">>$SCRIPT_PATH/update.log
  echo_info "">>$SCRIPT_PATH/update.log
  echo_info "$time Update ela succeeded!"
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

  echo_info "Downloading ela..."
  wget https://download.elastos.io/elastos-ela/elastos-ela-v0.8.3/elastos-ela-v0.8.3-linux-x86_64.tgz
  wget https://download.elastos.io/elastos-ela/elastos-ela-v0.8.3/SHA256SUMS
  shasum -c SHA256SUMS
  tar xf elastos-ela-v0.8.3-linux-x86_64.tgz
  echo_info "Stopping ela..."
  $SCRIPT_PATH/node.sh ela stop
  echo_info "Replacing ela..."
  cp -v elastos-ela-v0.8.3/ela $SCRIPT_PATH/ela/
  echo_info "Starting ela..."
  $SCRIPT_PATH/node.sh ela start
  rm -r elastos-ela-v0.8.3-linux-x86_64.tgz elastos-ela-v0.8.3.sh elastos-ela-v0.8.3 SHA256SUMS
}

SCRIPT_PATH=$(cd $(dirname $BASH_SOURCE); pwd)
upgrade_node
update_log