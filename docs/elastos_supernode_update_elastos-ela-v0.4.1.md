# dpos超级节点ela升级方法[20190109]

ela节点 elastos-ela-v0.4.1 版本已发布，该版本升级内容主要包括：
- 修复部分超级节点不同步的问题
- 修复listcrcandidates接口返回id地址格式不对的问题


## 升级步骤

1. 登录服务器
2. 进入节点目录

```bash
cd ~/node/
```

3. 下载节点更新脚本

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/script/update_elastos-ela-v0.4.1.sh;
chmod a+x ~/node/update_elastos-ela-v0.4.1.sh
```

4. 执行节点更新脚本

```bash
~/node/update_elastos-ela-v0.4.1.sh
```

5. 检查节点运行状态

```bash
~/node/node.sh status
```