# dpos超级节点ela升级方法[20191212]

ela节点 elastos-ela-v0.4.0 版本已发布，该版本升级内容主要包括：
- 支持注册CR委员
- 支持CR委员投票

提示：
 - 第一次ela节点升级为elastos-ela-v0.4.0版本数据会进行迁移和数据初始化，预计16分钟后可正常同步区块。
 - 建议在区块高度537670之前(预计北京时间2019年12月23日)将ela节点升级至 elastos-ela-v0.4.0，如未升级，可能会出现节点无法同步等状况。

## 升级步骤

1. 登录服务器
2. 进入节点目录

```bash
cd ~/node/
```

3. 下载节点更新脚本

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/script/update_elastos-ela-v0.4.0.sh;
chmod a+x ~/node/update_elastos-ela-v0.4.0.sh
```

4. 执行节点更新脚本

```bash
~/node/update_elastos-ela-v0.4.0.sh
```

5. 检查节点运行状态

```bash
~/node/node.sh status
```