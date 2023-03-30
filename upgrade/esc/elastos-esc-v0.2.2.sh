#!/bin/bash

echo_error()
{
    if [ -t 1 ]; then
        echo -e "\033[1;31mERROR:\033[0m $1" 1>&2
    else
        echo "ERROR: $1" 1>&2
    fi
}

echo_info()
{
    if [ -t 1 ]; then
        echo -e "\033[1;34mINFO:\033[0m $1"
    else
        echo "INFO: $1"
    fi
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

    echo_info "Updating esc..."
    $SCRIPT_PATH/node.sh esc update
    local PID=$(pgrep -x esc)
    if [ "$PID" == "" ]; then
       $SCRIPT_PATH/node.sh esc start
    fi
    rm elastos-esc-*.sh
}

SCRIPT_PATH=$(cd $(dirname $BASH_SOURCE); pwd)
upgrade_node
