# EID节点升级方案[20211105]

elastos-eid-v0.1.3 版本已发布，该版本升级内容主要包括：
- 支持doc排序验签，开启高度 EID高度2400000（北京时间预计2021年11月15日）

> **注**：

> 本次节点升级与release_v0.1.2版本不兼容

## 自动升级步骤

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

## 手动升级步骤

1. 下载节点

```
https://download.elastos.org/elastos-eid/elastos-eid-v0.1.3
```

2. 关闭节点
3. 删除数据

```bash
rm -r -v ~/node/eid/data/header
rm -r -v ~/node/eid/data/spv_transaction_info.db
rm -r -v ~/node/eid/data/store
```
4. 替换节点
5. 启动节点