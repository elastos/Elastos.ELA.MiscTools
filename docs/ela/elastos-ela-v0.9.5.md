# The ELA v0.9.5 upgrade[20230417]

The upgrade mainly includes:

- Fix POW consensus validation issue

## Automatic upgrade using node.sh

1. Log in to the server
2. Update the latest ela node

```bash
$ ~/node/node.sh ela update
```

3. Delete the checkpoints directory

```bash
$ rm -r ~/node/ela/elastos/data/checkpoints
```

4. Start ela node

   The first time you start the node will initialize the node, after it is completed, it will synchronize the block
   height, this process will be determined by the server memory to complete the time, please wait patiently...

```bash
$ ~/node/node.sh ela start
```

5. Check node status after 20 to 30 minutes

   Some nodes are highly out of sync and automatically process data after the first upgrade, after which the node
   process is closed and the node needs to be started again

   The node status is down and the log shows `###################### need to restart again ######################`,
   please start the node again

```bash
$ ~/node/node.sh status
```


## Automatic upgrade of the specified version

1. Log in to the server
2. Enter the node directory

```bash
cd ~/node/
```

3. Download node update script

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/ela/elastos-ela-v0.9.5.sh
```

4. Script permission changes

```bash
chmod a+x ~/node/elastos-ela-v0.9.5.sh
```

5. Execute node update script

```bash
~/node/elastos-ela-v0.9.5.sh
```

6. Check node status after 20 to 30 minutes

   Some nodes are highly out of sync and automatically process data after the first upgrade, after which the node
   process is closed and the node needs to be started again

   The node status is down and the log shows `###################### need to restart again ######################`,
   please start the node again

```bash
$ ~/node/node.sh status
```

## Manual upgrade steps

1. Download ela node

```
https://download.elastos.io/elastos-ela/elastos-ela-v0.9.5
```

2. Stop ela node
3. Replace ela node
4. Delete the checkpoints directory

```bash
$ rm -r ~/node/ela/elastos/data/checkpoints
```

5. Start ela node

   The first time you start the node will initialize the node, after it is completed, it will synchronize the block
   height, this process will be determined by the server memory to complete the time, please wait patiently...

6. Check node status after 20 to 30 minutes

   Some nodes are highly out of sync and automatically process data after the first upgrade, after which the node
   process is closed and the node needs to be started again

   The node status is down and the log shows `###################### need to restart again ######################`,
   please start the node again
