#!/bin/bash
/datadrive/blockchain/parity/parity-ethereum-2.1.10/target/release/parity --config ./node0.toml --jsonrpc-cors '*' &
/datadrive/blockchain/parity/parity-ethereum-2.1.10/target/release/parity --config ./node1.toml --jsonrpc-cors '*' &
/datadrive/blockchain/parity/parity-ethereum-2.1.10/target/release/parity --config ./node2.toml --jsonrpc-cors '*' &
/datadrive/blockchain/parity/parity-ethereum-2.1.10/target/release/parity --config ./node3.toml --jsonrpc-cors '*' &
