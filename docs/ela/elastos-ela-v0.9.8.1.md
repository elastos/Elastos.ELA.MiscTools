# The ELA v0.9.8.1 upgrade[20240922]

The upgrade mainly includes:

- Replace sponsors file
  
## Automatic upgrade update sponsors file
## Upgrade Steps
1. Log in to the server
2. Enter the node directory

```bash
cd ~/node/
```

3. Download node update script

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/ela/elastos-ela-v0.9.8.1.sh
```

4. Script permission changes

```bash
chmod a+x ~/node/elastos-ela-v0.9.8.1.sh
```

5. Execute node update script

```bash
~/node/elastos-ela-v0.9.8.1.sh
```

6. Check node status

```bash
$ ~/node/node.sh status
```

## Manual upgrade steps

1. Download sponsors file

```
wget https://download.elastos.io/elastos-ela/elastos-ela-v0.9.8/sponsor/sponsors.tgz
```
2. Unzip sponsors.tgz
```
tar xf sponsors.tgz
```  
3. Stop ela node

4. Delete the checkpoints directory

```bash
$ rm -r ~/node/ela/elastos/data/checkpoints
```
5. **Copy  the "sponsors" file to working directory of the ela node**
   
   Copy the "sponsors" file to the working directory of the ela node or configure the "config.json" file of ela node using "SponsorsFilePath" to specify the "sponsors" file path
   
```json  
{
    "Configuration": {
        "DPoSConfiguration": {
            "SponsorsFilePath": "/home/ela-4/node/sponsors"
        }
    }
}
```
6. Start ela node

   The first time you start the node will initialize the node, after it is completed, it will synchronize the block
   height, this process will be determined by the server memory to complete the time, please wait patiently...

7. Check node status
