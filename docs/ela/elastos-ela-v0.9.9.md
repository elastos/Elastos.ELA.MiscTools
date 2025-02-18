# The ELA v0.9.9 upgrade[20250220]

The upgrade mainly includes:

- Resolve the issue of fork and reorganization
- Adjustment of consensus mechanism
- Illegal mechanism activated
   
## Automatic upgrade of the specified version
## Upgrade Steps
1. Log in to the server
2. Enter the node directory

```bash
cd ~/node/
```

3. Download node update script

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/ela/elastos-ela-v0.9.9.sh
```

4. Script permission changes

```bash
chmod a+x ~/node/elastos-ela-v0.9.9.sh
```

5. Execute node update script

```bash
~/node/elastos-ela-v0.9.9.sh
```

6. Check node status

```bash
$ ~/node/node.sh status
```

## Manual upgrade steps

1. Download ela node

```
https://download.elastos.io/elastos-ela/elastos-ela-v0.9.9
```

2. Stop ela node
3. Replace ela node
4. Delete the checkpoints in the "elastos/data" directory of the ela node working directory, for example: ela node working directory is " ~/node/ela"

```bash
$ rm -r ~/node/ela/elastos/data/checkpoints
```

5. Start ela node

   The first time you start the node will initialize the node, after it is completed, it will synchronize the block
   height, this process will be determined by the server memory to complete the time, please wait patiently...

6. Check node status

