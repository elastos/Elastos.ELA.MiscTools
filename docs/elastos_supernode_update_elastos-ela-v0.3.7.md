# dpos超级节点ela升级方法[20190818]

ela节点 elastos-ela-v0.3.7 版本已发布，该版本升级内容主要包括：
- 修复节点无法从头同步数据
- 修复分叉重组回滚导致区块高度不增长

建议尽快将ela节点升级至 elastos-ela-v0.3.7；如未升级，可能会出现节点无法同步等状况。

## 升级步骤

1. 登录服务器
2. 进入节点目录

```bash
cd ~/node/
```

3. 下载节点更新脚本

```bash
wget https://raw.githubusercontent.com/modongjie/Elastos.ELA.Supernode/master/build/update_elastos-ela-v0.3.7.sh;
chmod a+x ~/node/update_elastos-ela-v0.3.7.sh
```

4. 执行节点更新脚本

```bash
~/node/update_elastos-ela-v0.3.7.sh
```

5. 检查节点运行状态

```bash
~/node/node.sh status
```