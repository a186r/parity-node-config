### 启动节点
1. 将生成的账户设置为预设的出块节点
2. 为账户预设余额
3. nodex.toml中设置为engine_signer和author
4. 在nodex.toml中unlock该账户
5. 启动节点 ./start_nodex `/datadrive/blockchain/parity/parity-ethereum-2.1.10/target/release/parity --config ./node0.toml --jsonrpc-cors "*" -lsync=trace --no-warp`

### 注意事项
#### 从源码编译 
`cargo build --release --features final`

#### 为节点生成新的账户
`/datadrive/blockchain/parity/parity-ethereum-2.1.10/target/release/parity account new --config ./node0.toml`

#### networkID
toml文件中的network id应该与链配置文件(demo.json)中的networkid保持一致，否则会出现冲突，导致无法验证交易和区块

#### 设置gas
1. Set the initial Block Gas Limit with the gasLimit parameter in the Parity chain spec.
2. Miners will re-set this as they vote to raise or lower this limit over time, with minGasLimit being the floor.