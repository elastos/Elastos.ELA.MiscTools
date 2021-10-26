# DPOS超级节点ELA升级方案[20211026]

ela节点 elastos-ela-v0.8.2 版本已发布，该版本升级内容主要包括：
- 优化checkpoints内存状态

> **注**：

> 本次节点升级与release_v0.8.1版本不兼容

## 升级步骤

1. 登录服务器
2. 进入节点目录

```bash
cd ~/node/
```

3. 下载节点更新脚本

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/script/ela/update_elastos-ela-v0.8.2.sh
```
4. 脚本权限更改

```bash
chmod a+x ~/node/update_elastos-ela-v0.8.2.sh
```

5. 执行节点更新脚本

```bash
~/node/update_elastos-ela-v0.8.2.sh
```

6. 检查节点运行状态

```bash
~/node/node.sh status
```