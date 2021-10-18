# did节点升级方案[20200421]

did节点 elastos-did-v0.1.4 版本已发布，该版本升级内容主要包括：
- 优化SPV同步速度
- 交易池增加Expires验证
- 修改resolvedid接口timestamp时间格式为RFC3339


## 升级步骤

1. 登录服务器
2. 进入节点目录

```bash
cd ~/node/
```

3. 下载节点更新脚本

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/script/did/update_elastos-did-v0.1.4.sh;
chmod a+x ~/node/update_elastos-did-v0.1.4.sh
```

4. 执行节点更新脚本

```bash
~/node/update_elastos-did-v0.1.4.sh
```

5. 检查节点运行状态

```bash
~/node/node.sh status
```