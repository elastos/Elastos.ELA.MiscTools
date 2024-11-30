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
  echo_info "Update ela to elastos-ela-v0.9.8">>$SCRIPT_PATH/update.log
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
  
  if [ "$(uname -m)" == "armv6l" ] || [ "$(uname -m)" == "armv7l" ] || [ "$(uname -m)" == "aarch64" ]; then
    echo "The current system architecture is ARM"
    echo_info "Downloading ela..."
    wget https://download.elastos.io/elastos-ela/elastos-ela-v0.9.8/elastos-ela-v0.9.8-linux-arm64.tgz
    tar xf elastos-ela-v0.9.8-linux-arm64.tgz
    SHA_ELA_1=$(shasum elastos-ela-v0.9.8-linux-arm64/ela | cut -d' ' -f1)
    echo_info "Stopping ela..."
    $SCRIPT_PATH/node.sh ela stop
    echo "backup ela and ela-cli"
    mv $SCRIPT_PATH/ela/ela $SCRIPT_PATH/ela/ela_backup
    mv $SCRIPT_PATH/ela/ela-cli $SCRIPT_PATH/ela/ela-cli_backup
    echo_info "Replacing ela and ela-cli..."
    cp -v elastos-ela-v0.9.8-linux-arm64/ela $SCRIPT_PATH/ela/
    cp -v elastos-ela-v0.9.8-linux-arm64/ela-cli $SCRIPT_PATH/ela/
    $SCRIPT_PATH/ela/ela-cli rollback --height 1832749
    echo_info "Starting ela..."
    $SCRIPT_PATH/node.sh ela start
    SHA_ELA_2=$(shasum $SCRIPT_PATH/ela/ela | cut -d' ' -f1)
    
    if [ $SHA_ELA_1 == $SHA_ELA_2 ]; then
      update_log "succeeded"
    else
      update_log "failed"
    fi
    rm -rf elastos-ela-v0.9.8-linux-arm64.tgz elastos-ela-v0.9.8.sh elastos-ela-v0.9.8-linux-arm64
    
  else
    echo "The current system architecture x86_64 by default。"
    echo_info "Downloading ela..."
    wget https://download.elastos.io/elastos-ela/elastos-ela-v0.9.8-hotfix/elastos-ela-v0.9.8-hotfix-linux-x86_64.tgz	
    tar xf elastos-ela-v0.9.8-hotfix-linux-x86_64.tgz
    SHA_ELA_1=$(shasum elastos-ela-v0.9.8-hotfix-linux-x86_64/ela | cut -d' ' -f1)

    echo_info "Stopping ela..."
    $SCRIPT_PATH/node.sh ela stop
    echo "backup ela and ela-cli"
    mv $SCRIPT_PATH/ela/ela $SCRIPT_PATH/ela/ela_backup
    mv $SCRIPT_PATH/ela/ela-cli $SCRIPT_PATH/ela/ela-cli_backup
    
    echo_info "Replacing ela and ela-cli..."
    cp -v elastos-ela-v0.9.8-hotfix-linux-x86_64/ela $SCRIPT_PATH/ela/
    cp -v elastos-ela-v0.9.8-hotfix-linux-x86_64/ela-cli $SCRIPT_PATH/ela/
    $SCRIPT_PATH/ela/ela-cli rollback --height 1832749
   
    echo_info "Starting ela..."
    $SCRIPT_PATH/node.sh ela start
    SHA_ELA_2=$(shasum $SCRIPT_PATH/ela/ela | cut -d' ' -f1)
    if [ $SHA_ELA_1 == $SHA_ELA_2 ]; then
      update_log "succeeded"
    else
      update_log "failed"
    fi
    rm -rf elastos-ela-v0.9.8-hotfix-linux-x86_64 elastos-ela-v0.9.8-hotfix-linux-x86_64.tgz    
  fi
}

SCRIPT_PATH=$(cd $(dirname $BASH_SOURCE); pwd)
update_node
