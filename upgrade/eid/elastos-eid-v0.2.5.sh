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
  echo_info "$time">>$SCRIPT_PATH/update.log
  echo_info "==========">>$SCRIPT_PATH/update.log
  echo_info "Update eid to elastos-eid-v0.2.5">>$SCRIPT_PATH/update.log
  echo_info "">>$SCRIPT_PATH/update.log
  if [ $1 == "succeeded" ]; then
      echo_info "$time update of eid succeeded!"
  else
      echo_error "$time update of eid failed!"
  fi
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
  wget https://download.elastos.io/elastos-eid/elastos-eid-v0.2.5/elastos-eid-v0.2.5-linux-x86_64.tgz
  tar xf elastos-eid-v0.2.5-linux-x86_64.tgz
  SHA_EID_1=$(shasum elastos-eid-v0.2.5-linux-x86_64/eid | cut -d' ' -f1)
  
  echo_info "Stopping eid..."
  $SCRIPT_PATH/node.sh eid stop
  echo_info "Replacing eid..."
  cp -v elastos-eid-v0.2.5-linux-x86_64/eid $SCRIPT_PATH/eid/
  echo_info "Starting eid..."
  $SCRIPT_PATH/node.sh eid start
    
  SHA_EID_2=$(shasum $SCRIPT_PATH/eid/eid | cut -d' ' -f1)
  if [ $SHA_EID_1 == $SHA_EID_2 ]; then
      update_log "succeeded"
  else
      update_log "failed"
  fi
    
  rm -r elastos-eid-v0.2.5-linux-x86_64.tgz elastos-eid-v0.2.5.sh elastos-eid-v0.2.5-linux-x86_64
}

SCRIPT_PATH=$(cd $(dirname $BASH_SOURCE); pwd)
upgrade_node
