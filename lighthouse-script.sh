#!/bin/sh
bootnodes=$(cat /config/cl_nodes.list)
exec "$@" \
    --boot-nodes  "$bootnodes"

