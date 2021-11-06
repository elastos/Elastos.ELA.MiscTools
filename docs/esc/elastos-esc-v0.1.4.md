# ESC节点升级方案[20211105]

elastos-esc-v0.1.4 版本已发布，该版本升级内容主要包括：
- 支持12个CR spv动态感知，ELA高度1034900（北京时间预计2021年11月15日）
- 支持小额快速到账
- 支持充值提币充正交易

> **注**：

> 本次升级节点高度在 ELA 1034900 (预计北京时间2021年11月15日左右)之后，并且与release_v0.1.3.4版本不兼容

## 自动升级步骤

1. 登录服务器
2. 进入节点目录

```bash
cd ~/node/
```

3. 下载节点更新脚本

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/esc/elastos-esc-v0.1.4.sh
```
4. 脚本权限更改

```bash
chmod a+x ~/node/elastos-esc-v0.1.4.sh
```

5. 执行节点更新脚本

```bash
~/node/elastos-esc-v0.1.4.sh
```

6. 检查节点运行状态

```bash
~/node/node.sh status
```

## 手动升级步骤

1. 下载节点

```bash
https://download.elastos.org/elastos-esc/elastos-esc-v0.1.4
```

2. 关闭节点
3. 删除数据

```bash
rm -r -v ~/node/esc/data/header
rm -r -v ~/node/esc/data/spv_transaction_info.db
rm -r -v ~/node/esc/data/store
```
4. 替换节点
5. 启动节点