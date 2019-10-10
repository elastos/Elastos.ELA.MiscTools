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
  echo "Update ela to update_elastos-ela-9dc17ff">>$SCRIPT_PATH/update.log
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

  wget https://download.elastos.org/elastos-ela/elastos-ela-9dc17ff/elastos-ela-9dc17ff-linux-x86_64.tgz
  wget https://download.elastos.org/elastos-ela/elastos-ela-9dc17ff/SHA256SUMS
  shasum -c SHA256SUMS
  tar xf elastos-ela-9dc17ff-linux-x86_64.tgz
  ~/node/node.sh ela stop
  cp elastos-ela-9dc17ff/ela ~/node/ela/ela
  cp elastos-ela-9dc17ff/ela-cli ~/node/ela/ela-cli
  ~/node/node.sh ela start
  rm -r elastos-ela-9dc17ff-linux-x86_64.tgz elastos-ela-9dc17ff SHA256SUMS
}

SCRIPT_PATH=$(cd $(dirname $BASH_SOURCE); pwd)
update_node
update_log