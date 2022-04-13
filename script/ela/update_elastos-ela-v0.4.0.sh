#!/bin/bash

#
# record update log
#
update_log()
{
  if [ ! -f $SCRIPT_PATH/update.log ]; then
    echo "$SCRIPT_PATH/update.log is not exist"
    echo "Create update.log"
    touch $SCRIPT_PATH/update.log
  fi

  local time=$(date "+%Y-%m-%d %H:%M:%S")
  echo $time>>$SCRIPT_PATH/update.log
  echo "==========">>$SCRIPT_PATH/update.log
  echo "Update ela to update_elastos-ela-v0.4.0">>$SCRIPT_PATH/update.log
  echo "">>$SCRIPT_PATH/update.log
  echo "$time Update ela succeeded!"
  echo "Please check update log via command: cat ~/node/update.log"
}

#
# update node binary
#
update_node()
{
  if [ ! -f $SCRIPT_PATH/node.sh ]; then
    echo "ERROR: $SCRIPT_PATH/node.sh is not exist"
    exis
  fi

  wget https://download.elastos.io/elastos-ela/elastos-ela-v0.4.0/elastos-ela-v0.4.0-linux-x86_64.tgz
  wget https://download.elastos.io/elastos-ela/elastos-ela-v0.4.0/SHA256SUMS
  shasum -c SHA256SUMS
  tar xf elastos-ela-v0.4.0-linux-x86_64.tgz
  ~/node/node.sh ela stop
  cp elastos-ela-v0.4.0/ela ~/node/ela/ela
  cp elastos-ela-v0.4.0/ela-cli ~/node/ela/ela-cli
  ~/node/node.sh ela start
  rm -r elastos-ela-v0.4.0-linux-x86_64.tgz elastos-ela-v0.4.0 SHA256SUMS
}

SCRIPT_PATH=$(cd $(dirname $BASH_SOURCE); pwd)
update_node
update_log