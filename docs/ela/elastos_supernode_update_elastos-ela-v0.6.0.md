# dpos超级节点ela升级方案[20200923]

ela节点 elastos-ela-v0.6.0 版本已发布，该版本升级内容主要包括：
- 支持CR委员认领DPOS节点
- 新增提案更换提案负责人、终止提案、选举秘书长交易
- 支持新新提案取款交易
- 支持CR资产地址自动零钱换整
- 节点发送新的version消息

## 升级步骤

1. 登录服务器
2. 进入节点目录

```bash
cd ~/node/
```

3. 下载节点更新脚本

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/script/ela/update_elastos-ela-v0.6.0.sh;
chmod a+x ~/node/update_elastos-ela-v0.6.0.sh
```

4. 执行节点更新脚本

```bash
~/node/update_elastos-ela-v0.6.0.sh
```

5. 检查节点运行状态

```bash
~/node/node.sh status
```