# The EID-Oracle v0.1.3.2 upgrade[20211113]

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
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/eid-oracle/elastos-eid-oracle-v0.1.3.2.sh
```

4. Script permission changes

```bash
chmod a+x ~/node/elastos-eid-oracle-v0.1.3.2.sh
```

5. Execute node update script

```bash
~/node/elastos-eid-oracle-v0.1.3.2.sh
```

6. Check node operating status

```bash
~/node/node.sh status
```

## Manual upgrade steps

1. Download eid-oracle

```bash
https://download.elastos.io/elastos-eid-oracle/elastos-eid-oracle-v0.1.3.2
```

2. Close eid-oracle
3. Replace the js file of eid-oracle
4. Start eid-oracle