# dpos超级节点ela升级方案[20200525]

ela节点 elastos-ela-v0.5.0 版本已发布，该版本升级内容主要包括：
- 新增CRC提案相关交易
- 区块处理过程性能优化
- 解决节点杀不掉问题解决
- 解决节点强杀导致数据库损坏问题

## 环境变动内容
1. 服务器最低配置为4核8G

## 升级步骤

1. 登录服务器
2. 进入节点目录

```bash
cd ~/node/
```

3. 下载节点更新脚本

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/script/ela/update_elastos-ela-v0.5.0.sh;
chmod a+x ~/node/update_elastos-ela-v0.5.0.sh
```

4. 执行节点更新脚本

```bash
~/node/update_elastos-ela-v0.5.0.sh
```

5. 检查节点运行状态

```bash
~/node/node.sh status
```