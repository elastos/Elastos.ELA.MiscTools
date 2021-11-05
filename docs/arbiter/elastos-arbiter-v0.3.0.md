# Arbiter节点升级方案[20211105]

elastos-arbiter-v0.3.0 版本已发布，该版本升级内容主要包括：
- 新充值支持传递数据，生效高度：1032840（预计北京时间2021年11月12日）
- 支持提币冲正交易，生效高度：1032840
- 支持充值充正交易，生效高度：1032840
- 支持注册侧链
- 小额跨链快速到账额度限制最高1ELA

> **注**：

> 本次节点升级与release_v0.2.3版本不兼容

## 自动升级步骤

1. 登录服务器
2. 进入节点目录

```bash
cd ~/node/
```

3. 下载节点更新脚本

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/arbiter/elastos-arbiter-v0.3.0.sh
```
4. 脚本权限更改

```bash
chmod a+x ~/node/elastos-arbiter-v0.3.0.sh
```

5. 执行节点更新脚本

```bash
~/node/elastos-arbiter-v0.3.0.sh
```

6. 检查节点运行状态

```bash
~/node/node.sh status
```


## 手动升级步骤

1. 下载节点

```
https://download.elastos.org/elastos-arbiter/elastos-arbiter-v0.3.0
```

2. 关闭节点
3. 删除数据

```bash
rm -r -v ~/node/arbiter/elastos_arbiter
```
4. 替换节点
5. 启动节点