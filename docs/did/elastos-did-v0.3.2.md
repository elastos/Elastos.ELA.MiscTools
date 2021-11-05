# DID节点升级方案[20211105]

elastos-did-v0.3.2 版本已发布，该版本升级内容主要包括：
- 兼容elastos-ela-v0.8.2版本

> **注**：

> 本次节点升级与release_v0.3.1版本不兼容

## 自动升级步骤

1. 登录服务器
2. 进入节点目录

```bash
cd ~/node/
```

3. 下载节点更新脚本

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/did/elastos-did-v0.3.2.sh
```
4. 脚本权限更改

```bash
chmod a+x ~/node/elastos-did-v0.3.2.sh
```

5. 执行节点更新脚本

```bash
~/node/elastos-did-v0.3.2.sh
```

6. 检查节点运行状态

```bash
~/node/node.sh status
```

## 手动升级步骤

1. 下载节点

```
https://download.elastos.org/elastos-did/elastos-did-v0.3.2
```

2. 关闭节点
3. 删除spv数据

```bash
rm -r -v ~/node/did/elastos_did/data/spv
```
4. 替换节点
5. 启动节点