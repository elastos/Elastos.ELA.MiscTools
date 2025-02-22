# The ELA v0.9.9 upgrade[20250220]

The upgrade mainly includes:

- Resolve the issue of  reorganization
- Adjustment of DPOS consensus mechanism
- Activate the Malicious Behavior Penalty Mechanism for illegal
   
## Automatic upgrade of the specified version
## Upgrade Steps
1. Log in to the server
2. Enter the node directory

```bash
cd ~/node/
```

3. Download node update script

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/ela/elastos-ela-download-data-v0.9.9.sh
```

4. Script permission changes

```bash
chmod a+x ~/node/elastos-ela-download-data-v0.9.9.sh
```

5. Execute node update script

```bash
~/node/elastos-ela-download-data-v0.9.9.sh
```

6. Check node status

```bash
 ~/node/node.sh status
```

## Manual upgrade steps

1. Download ela node and sponsors file and ela data

```
wget https://download.elastos.io/elastos-ela/elastos-ela-v0.9.9
wget https://download.elastos.io/elastos-ela/elastos-ela-v0.9.9/sponsors
wget https://node-data.elastos.io/ela/ela-data-2025-02-22.tgz

```

2. Stop ela node
3. Replace ela node
4. Delete the data in the "elastos" directory of the ela node working directory, for example: ela node working directory is " ~/node/ela"

```bash
cd ~/node/ela/elastos
rm -rf data
```
5. Extract the "ela-data-2025-02-22.tgz" to the "elastos" directory of the ela node working directory, for example: ela node working directory is " ~/node/ela"
```bash
tar -xzvf ela-data-2025-02-22.tgz -C ~/node/ela/elastos
```
6. Copy  the "sponsors" file to working directory of the ela node
   
   Copy the "sponsors" file that has downloaded to the working directory of the ela node or configure the "config.json" file of ela node using "SponsorsFilePath" to specify the "sponsors" file path
   
```json  
{
    "Configuration": {
        "DPoSConfiguration": {
            "SponsorsFilePath": "/home/ela-4/node/sponsors"
        }
    }
}
```
7. Start ela node

   The first time you start the node will initialize the node, after it is completed, it will synchronize the block
   height, this process will be determined by the server memory to complete the time, please wait patiently...

8. Check node status


