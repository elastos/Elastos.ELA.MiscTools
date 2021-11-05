# EID节点升级方案[20211105]

ela节点 elastos-eid-v0.1.3 版本已发布，该版本升级内容主要包括：
- 支持doc排序验签，开启高度 EID高度2400000（北京时间预计2021年11月15日）

> **注**：

> 本次节点升级与release_v0.1.2版本不兼容

## 升级步骤

1. 登录服务器
2. 进入节点目录

```bash
cd ~/node/
```

3. 下载节点更新脚本

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/eid/elastos-eid-v0.1.3.sh
```
4. 脚本权限更改

```bash
chmod a+x ~/node/elastos-eid-v0.1.3.sh
```

5. 执行节点更新脚本

```bash
~/node/elastos-eid-v0.1.3.sh
```

6. 检查节点运行状态

```bash
~/node/node.sh status
```