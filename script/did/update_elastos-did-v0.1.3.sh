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
  echo "Update did to update_elastos-did-v0.1.3">>$SCRIPT_PATH/update.log
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

  mkdir elastos-did-v0.1.3
  cd ~/node/elastos-did-v0.1.3/
  wget https://download.elastos.org/elastos-did/elastos-did-v0.1.3/did
  wget https://download.elastos.org/elastos-did/elastos-did-v0.1.3/SHA256SUM
  chmod a+x did
  shasum -c SHA256SUM
  ~/node/node.sh did stop
  cp did ~/node/did/
  ~/node/node.sh did start
  rm -r ~/node/elastos-did-v0.1.3
}

SCRIPT_PATH=$(cd $(dirname $BASH_SOURCE); pwd)
update_node
update_log