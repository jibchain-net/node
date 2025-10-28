#!/bin/sh
geth --datadir=/datadir/geth/  init /config/genesis.json
bootnodes=$(cat /config/el_nodes.list)
exec geth "$@" \
    --bootnodes "$bootnodes"

