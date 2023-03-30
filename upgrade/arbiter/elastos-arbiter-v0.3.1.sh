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
  echo_info "Update arbiter to elastos-arbiter-v0.3.1">>$SCRIPT_PATH/update.log
  echo_info "">>$SCRIPT_PATH/update.log
  echo_info "$time Update arbiter succeeded!"
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

  echo_info "Downloading arbiter..."
  wget https://download.elastos.io/elastos-arbiter/elastos-arbiter-v0.3.1/elastos-arbiter-v0.3.1-linux-x86_64.tgz
  wget https://download.elastos.io/elastos-arbiter/elastos-arbiter-v0.3.1/SHA256SUMS
  shasum -c SHA256SUMS
  tar xf elastos-arbiter-v0.3.1-linux-x86_64.tgz
  echo_info "Stopping arbiter..."
  $SCRIPT_PATH/node.sh arbiter stop
  echo_info "Replacing arbiter..."
  cp -v elastos-arbiter-v0.3.1/arbiter $SCRIPT_PATH/arbiter/
  echo_info "Starting arbiter..."
  $SCRIPT_PATH/node.sh arbiter start
  rm -r elastos-arbiter-v0.3.1-linux-x86_64.tgz elastos-arbiter-v0.3.1.sh elastos-arbiter-v0.3.1 SHA256SUMS
}

SCRIPT_PATH=$(cd $(dirname $BASH_SOURCE); pwd)
upgrade_node
update_log