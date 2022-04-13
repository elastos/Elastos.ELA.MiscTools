# The EID v0.2.0 upgrade[20211223]

The upgrade mainly includes:
- Support customized DID registration, update, transfer, and deactivated transactions
- Support customized DID certificate declaration, cancellation transaction and certificate API query
- Support the declaration of ordinary DID certificates, revocation transactions and certificate API query

## Automatic upgrade steps

1. Log in to the server
2. Enter the node directory

```bash
cd ~/node/
```

3. Download node update script

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/eid/elastos-eid-v0.2.0.sh
```
4. Script permission changes

```bash
chmod a+x ~/node/elastos-eid-v0.2.0.sh
```

5. Execute node update script

```bash
~/node/elastos-eid-v0.2.0.sh
```

6. Check node operating status

```bash
~/node/node.sh status
```

## Manual upgrade steps

1. Download eid node

```
https://download.elastos.io/elastos-eid/elastos-eid-v0.2.0
```

2. Stop eid node
3. Remove spv data

```bash
rm -rv ~/node/eid/data/header
rm -rv ~/node/eid/data/spv_transaction_info.db
rm -rv ~/node/eid/data/store
```
4. Replace eid node
5. Start eid node