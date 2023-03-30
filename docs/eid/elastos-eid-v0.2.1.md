# The EID v0.2.1 upgrade[20230330]

The upgrade mainly includes:
- Support small recharge fast arrival

## Automatic upgrade steps

1. Log in to the server
2. Enter the node directory

```bash
$ cd ~/node/
```

3. Download node update script

```bash
$ wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/eid/elastos-eid-v0.2.1.sh
```
4. Script permission changes

```bash
$ chmod a+x ~/node/elastos-eid-v0.2.1.sh
```

5. Execute node update script

```bash
$ ~/node/elastos-eid-v0.2.1.sh
```

6. Check node operating status

```bash
$ ~/node/node.sh status
```

## Manual upgrade steps

1. Download eid node

```
https://download.elastos.io/elastos-eid/elastos-eid-v0.2.1
```

2. Stop eid node
3. Replace eid node
4. Start eid node