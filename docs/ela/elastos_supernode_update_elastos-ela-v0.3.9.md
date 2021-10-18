# dpos超级节点ela升级方案[20191122]

ela节点 elastos-ela-v0.3.9 版本已发布，该版本升级内容主要包括：
- 修复区块高度不同步

建议尽快将ela节点升级至 elastos-ela-v0.3.9；如未升级，可能会出现节点无法同步等状况。

## 升级步骤

1. 登录服务器
2. 进入节点目录

```bash
cd ~/node/
```

3. 下载节点更新脚本

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/script/ela/update_elastos-ela-v0.3.9.sh;
chmod a+x ~/node/update_elastos-ela-v0.3.9.sh
```

4. 执行节点更新脚本

```bash
~/node/update_elastos-ela-v0.3.9.sh
```

5. 检查节点运行状态

```bash
~/node/node.sh status
```