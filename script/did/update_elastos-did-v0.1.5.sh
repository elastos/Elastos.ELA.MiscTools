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
  echo "Update did to update_elastos-did-v0.1.5">>$SCRIPT_PATH/update.log
  echo "">>$SCRIPT_PATH/update.log
  echo "$time Update did succeeded!"
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

  wget https://download.elastos.org/elastos-did/elastos-did-v0.1.5/elastos-did-v0.1.5-linux-x86_64.tgz
  wget https://download.elastos.org/elastos-did/elastos-did-v0.1.5/SHA256SUMS
  shasum -c SHA256SUMS
  tar xf elastos-did-v0.1.5-linux-x86_64.tgz
  ~/node/node.sh did stop
  cp  elastos-did-v0.1.5/did ~/node/did/
  ~/node/node.sh did start
  rm -r elastos-did-v0.1.5-linux-x86_64.tgz elastos-did-v0.1.5 SHA256SUMS
}

SCRIPT_PATH=$(cd $(dirname $BASH_SOURCE); pwd)
update_node
update_log