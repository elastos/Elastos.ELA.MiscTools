# The ESC-Oracle v0.1.4.2 upgrade[20211130]

The elastos-esc-oracle-v0.1.4.2 version has been released. The upgrade mainly includes:
- Fix the slow synchronization problem of some nodes in the small amount to the account

## Automatic upgrade steps

1. Log in to the server
2. Enter the node directory

```bash
cd ~/node/
```

3. Download node update script

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/esc-oracle/elastos-esc-oracle-v0.1.4.2.sh
```

4. Script permission changes

```bash
chmod a+x ~/node/elastos-esc-oracle-v0.1.4.2.sh
```

5. Execute node update script

```bash
~/node/elastos-esc-oracle-v0.1.4.2.sh
```

6. Check node operating status

```bash
~/node/node.sh status
```

## Manual upgrade steps

1. Download esc-oracle

```bash
https://download.elastos.io/elastos-esc-oracle/elastos-esc-oracle-v0.1.4.2
```

2. Close esc-oracle
3. Replace the js file of esc-oracle
4. Start esc-oracle