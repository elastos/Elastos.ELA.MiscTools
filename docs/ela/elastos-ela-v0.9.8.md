# The ELA v0.9.8 upgrade[20241010]

The upgrade mainly includes:

- Fix some node height out of sync issues
- Add block confirmation initiator to record transactions
- Delayed distribution of profits to the next block
   
## Automatic upgrade of the specified version
## Note: the default working directory for automatic upgrade is "~/node/ela" and the sponsor file will be placed in this directory by default,if your working directory is not this working directory, you can use the following two methods:
1>Configure the config.json file and use "Sponsors File Path" to specify the location of the sponsors file, as shown in the following example:

{
    "Configuration": {
        "DPoSConfiguration": {
            "SponsorsFilePath": "/home/ela-4/node/sponsors"
        }
    }
}

2>Adopting manual upgrade
## Upgrade Steps
1. Log in to the server
2. Enter the node directory

```bash
cd ~/node/
```

3. Download node update script

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/ela/elastos-ela-v0.9.8.sh
```

4. Script permission changes

```bash
chmod a+x ~/node/elastos-ela-v0.9.8.sh
```

5. Execute node update script

```bash
~/node/elastos-ela-v0.9.8.sh
```

6. Check node status

```bash
$ ~/node/node.sh status
```

## Manual upgrade steps

1. Download ela node

```
https://download.elastos.io/elastos-ela/elastos-ela-v0.9.8
```

2. Stop ela node
3. Replace ela node
4. Delete the checkpoints directory

```bash
$ rm -r ~/node/ela/elastos/data/checkpoints
```
5. Copy the "sponsors" file to the working directory of the ela node or configure the config.json file using "SponsorsFilePath" to specify the "sponsors" file path, refer to the example as below
   
{
    "Configuration": {
        "DPoSConfiguration": {
            "SponsorsFilePath": "/home/ela-4/node/sponsors"
        }
    }
}

6. Start ela node

   The first time you start the node will initialize the node, after it is completed, it will synchronize the block
   height, this process will be determined by the server memory to complete the time, please wait patiently...

7. Check node status

