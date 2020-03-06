# dpos超级节点ela升级方法[20200306]

ela节点 elastos-ela-v0.4.2 版本已发布，该版本升级内容主要包括：
- 支持侧链DID注册CR

提示：
 - 建议在区块高度598000之前(预计北京时间2020年03月16日)将ela节点升级至 elastos-ela-v0.4.2，如未升级，可能会出现节点无法同步等状况。

## 升级步骤

1. 登录服务器
2. 进入节点目录

```bash
cd ~/node/
```

3. 下载节点更新脚本

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/script/ela/update_elastos-ela-v0.4.2.sh;
chmod a+x ~/node/update_elastos-ela-v0.4.2.sh
```

4. 执行节点更新脚本

```bash
~/node/update_elastos-ela-v0.4.2.sh
```

5. 检查节点运行状态

```bash
~/node/node.sh status
```