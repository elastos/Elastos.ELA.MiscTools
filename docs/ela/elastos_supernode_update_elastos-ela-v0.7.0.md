# DPOS超级节点ELA升级方案[20210507]

ela节点 elastos-ela-v0.7.0 版本已发布，该版本升级内容主要包括：
- 修改ELA年增发基数由3300万调整为2000万
- 修改 ELA 年增发比例由4%调整为2%
- 支持随机备选节点功能，DPOS 共识每十轮（即360个区块）从 DPOS 候选节点选中一个节点参与 DPOS 共识出块
- 支持CR委员换届认领周期暂时由36个DPOS出块

## 升级步骤

1. 登录服务器
2. 进入节点目录

```bash
cd ~/node/
```

3. 下载节点更新脚本

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/script/ela/update_elastos-ela-v0.7.0.sh;
chmod a+x ~/node/update_elastos-ela-v0.7.0.sh
```

4. 执行节点更新脚本

```bash
~/node/update_elastos-ela-v0.7.0.sh
```

5. 检查节点运行状态

```bash
~/node/node.sh status
```