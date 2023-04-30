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
  echo_info "Update ela to elastos-ela-v0.9.7">>$SCRIPT_PATH/update.log
  echo_info "">>$SCRIPT_PATH/update.log
  if [ $1 == "succeeded" ]; then
      echo_info "$time update of ela succeeded!"
  else
      echo_error "$time update of ela failed!"
  fi
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

  echo_info "Downloading ela..."
  wget https://download.elastos.io/elastos-ela/elastos-ela-v0.9.7/elastos-ela-v0.9.7-linux-x86_64.tgz
  tar xf elastos-ela-v0.9.7-linux-x86_64.tgz
  SHA_ELA_1=$(shasum elastos-ela-v0.9.7-linux-x86_64/ela | cut -d' ' -f1)

  echo_info "Stopping ela..."
  $SCRIPT_PATH/node.sh ela stop
  echo_info "Replacing ela..."
  cp -v elastos-ela-v0.9.7-linux-x86_64/ela $SCRIPT_PATH/ela/

  if [ -d "$SCRIPT_PATH/ela/elastos/data/checkpoints" ]; then
      echo_info "The checkpoints file is being deleted, it will take a long time to initialize the data when starting the ELA node for the first time, please don’t worry!"
      rm -r $SCRIPT_PATH/ela/elastos/data/checkpoints
  fi

  echo_info "Starting ela..."
  $SCRIPT_PATH/node.sh ela start

  SHA_ELA_2=$(shasum $SCRIPT_PATH/ela/ela | cut -d' ' -f1)
  if [ $SHA_ELA_1 == $SHA_ELA_2 ]; then
      update_log "succeeded"
  else
      update_log "failed"
  fi

  rm -r elastos-ela-v0.9.7-linux-x86_64.tgz elastos-ela-v0.9.7.sh elastos-ela-v0.9.7-linux-x86_64
}

SCRIPT_PATH=$(cd $(dirname $BASH_SOURCE); pwd)
update_node