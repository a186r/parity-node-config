### 注意事项
- 从源码编译 `cargo build --release --features final`
- 为节点生成新的账户
`~/dev/parity-ethereum/target/release/parity account new --config ./node0.toml`
- toml文件中的network id应该与链配置文件(demo.json)中的networkid保持一致，否则会出现冲突，导致无法验证交易和区块
- 配置多节点的时候，在链配置文件中，应该加入"nodes"字段,否则,分叉警告！（你必将陷入无限的分叉与撕逼中无法自拔，也无法他拔，反正，无人能拔）

### 注意
parity中设置gas的正确姿势：
1. Set the initial Block Gas Limit with the gasLimit parameter in the Parity chain spec.
2. Miners will re-set this as they vote to raise or lower this limit over time, with minGasLimit being the floor.

### 启动节点
1. 将生成的账户设置为预设的出块节点
2. 为账户预设余额
3. nodex.toml中设置为engine_signer和author
4. 在nodex.toml中unlock该账户
5. 启动节点 ./start_nodex `~/dev/parity-ethereum/target/release/parity --config ./node0.toml --jsonrpc-cors "*" -lsync=trace --no-warp`
