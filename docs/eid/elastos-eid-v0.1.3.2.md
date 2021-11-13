# The EID v0.1.3.2 upgrade[20211113]

The upgrade mainly includes:
- Support new recharge transactions of ELA nodes 

## Automatic upgrade steps

1. Log in to the server
2. Enter the node directory

```bash
cd ~/node/
```

3. Download node update script

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/eid/elastos-eid-v0.1.3.2.sh
```
4. Script permission changes

```bash
chmod a+x ~/node/elastos-eid-v0.1.3.2.sh
```

5. Execute node update script

```bash
~/node/elastos-eid-v0.1.3.2.sh
```

6. Check node operating status

```bash
~/node/node.sh status
```

## Manual upgrade steps

1. Download eid node

```
https://download.elastos.org/elastos-eid/elastos-eid-v0.1.3.2
```

2. Stop eid node
3. Remove spv data

```bash
rm -r -v ~/node/eid/data/header
rm -r -v ~/node/eid/data/spv_transaction_info.db
rm -r -v ~/node/eid/data/store
```
4. Replace eid node
5. Start eid node