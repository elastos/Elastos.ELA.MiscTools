# did节点升级方案[20210608]

did节点 elastos-did-v0.3.1 版本已发布，该版本升级内容主要包括：
- 添加did凭证验证
- 增加推送CustomID相关交易的布隆过滤器

## 升级步骤

1. 登录服务器
2. 进入节点目录

```bash
cd ~/node/
```

3. 下载节点更新脚本

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/script/did/update_elastos-did-v0.3.1.sh;
chmod a+x ~/node/update_elastos-did-v0.3.1.sh
```

4. 执行节点更新脚本

```bash
~/node/update_elastos-did-v0.3.1.sh
```

5. 检查节点运行状态

```bash
~/node/node.sh status
```