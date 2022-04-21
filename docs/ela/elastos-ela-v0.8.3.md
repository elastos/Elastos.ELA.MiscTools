# The ELA v0.8.3 upgrade[20220421]

The upgrade mainly includes:
- Improve the stability of the cross-chain during the period of claiming a node after CR is elected

## Automatic upgrade steps

1. Log in to the server
2. Enter the node directory

```bash
cd ~/node/
```

3. Download node update script

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/ela/elastos-ela-v0.8.3.sh
```
4. Script permission changes

```bash
chmod a+x ~/node/elastos-ela-v0.8.3.sh
```

5. Execute node update script

```bash
~/node/elastos-ela-v0.8.3.sh
```

6. Check node operating status

```bash
~/node/node.sh status
```

## Manual upgrade steps

1. Download ela node

```
https://download.elastos.io/elastos-ela/elastos-ela-v0.8.3
```

2. Stop ela node
3. Replace ela node
4. Start ela node