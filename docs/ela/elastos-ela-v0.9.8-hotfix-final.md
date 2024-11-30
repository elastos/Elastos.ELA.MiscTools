# The ELA v0.9.8 upgrade[20240919]

The upgrade mainly includes:

- Fix some node height out of sync issues because fork
   
## Automatic upgrade of the specified version
## Upgrade Steps
1. Log in to the server
2. Enter the node directory

```bash
cd ~/node/
```

3. Download node update script

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/ela/elastos-ela-v0.9.8-hotfix.sh
```

4. Script permission changes

```bash
chmod a+x ~/node/elastos-ela-v0.9.8-hotfix.sh
```

5. Execute node update script

```bash
~/node/elastos-ela-v0.9.8-hotfix.sh
```

6. Check node status

```bash
$ ~/node/node.sh status
```

## Manual upgrade steps

1. Download ela node

```
https://download.elastos.io/elastos-ela/elastos-ela-v0.9.8-hotfix
```

2. Stop ela node
3. backup original ela and ela-cli program
4. Replace ela and ela-cli to the ela node directory with the ela and ela-cli in the elastos-ela-v0.9.8-hotfix dictory
5. Execute the rollback command
```bash
./ela-cli rollback --height 1832749
```
6. Start ela node
7. Check node status


