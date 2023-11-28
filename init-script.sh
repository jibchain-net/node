#!/bin/sh
#if [ ! -d /datadir/geth/chaindata ]; then
    echo "/datadir/geth/chaindata not found, running 'geth init'..."
    erigon --datadir /datadir/erigon  init /genesis.json
    echo "...done!"
#fi

exec erigon "$@"

