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
  echo_info "Update did to elastos-did-v0.3.2">>$SCRIPT_PATH/update.log
  echo_info "">>$SCRIPT_PATH/update.log
  echo_info "$time Update did succeeded!"
  echo_info "Please check update log via command: cat $SCRIPT_PATH/update.log"
}

#
# update node binary
#
update_node()
{
  if [ ! -f $SCRIPT_PATH/node.sh ]; then
    echo_error "$SCRIPT_PATH/node.sh is not exist"
    exit
  fi

  echo_info "Downloading did..."
  wget https://download.elastos.org/elastos-did/elastos-did-v0.3.2/elastos-did-v0.3.2-linux-x86_64.tgz
  wget https://download.elastos.org/elastos-did/elastos-did-v0.3.2/SHA256SUMS
  shasum -c SHA256SUMS
  tar xf elastos-did-v0.3.2-linux-x86_64.tgz
  echo_info "Stopping did..."
  $SCRIPT_PATH/node.sh did stop
  echo_info "Replacing did..."
  cp -v elastos-did-v0.3.2/did $SCRIPT_PATH/did/

  echo_info "Removing did spv... "
  rm -r -v $SCRIPT_PATH/did/elastos_did/data/spv

  echo_info "Starting did..."
  $SCRIPT_PATH/node.sh did start
  rm -r elastos-did-v0.3.2-linux-x86_64.tgz elastos-did-v0.3.2.sh SHA256SUMS
}

SCRIPT_PATH=$(cd $(dirname $BASH_SOURCE); pwd)
update_node
update_log