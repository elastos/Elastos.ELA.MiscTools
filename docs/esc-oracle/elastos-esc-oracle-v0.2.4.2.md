# The ESC-Oracle v0.2.4.2 upgrade[20240831]

The elastos-esc-oracle-v0.2.4.2 version has been released. The upgrade mainly includes:
- fix the burn nft bug

## Automatic upgrade steps

1. Log in to the server
2. Enter the node directory

```bash
cd ~/node/
```

3. Download node update script

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/esc-oracle/elastos-esc-oracle-v0.2.4.2.sh
```

4. Script permission changes

```bash
chmod a+x ~/node/elastos-esc-oracle-v0.2.4.2.sh
```

5. Execute node update script

```bash
~/node/elastos-esc-oracle-v0.2.4.2.sh
```

6. Check node operating status

```bash
~/node/node.sh status
```

## Manual upgrade steps
1. Log in to the server
2. Enter the node directory

```bash
cd ~/node/
```

1. Download esc-oracle and unzip file

```bash
  wget https://download.elastos.io/elastos-esc-oracle/elastos-esc-oracle-v0.2.4.2/elastos-esc-oracle-v0.2.4.2.tgz
  tar xf elastos-esc-oracle-v0.2.4.2.tgz
```

2. Close esc-oracle
```bash
  ~/node/node.sh esc-oracle stop
```   
4. Replace the js file of esc-oracle
   
note:

if only ~/node/esc-oracle folder is exist
```bash
   cp -v elastos-esc-oracle-v0.2.4.2/getPledgeBillBurnLogsByHeight.js ~/node/esc-oracle/
```
  if only ~/node/esc/esc-oracle folder is exist
```bash
   cp -v elastos-esc-oracle-v0.2.4.2/getPledgeBillBurnLogsByHeight.js ~/node/esc/esc-oracle/
```
  if both ~/node/esc-oracle and ~/node/esc/esc-oracle are exist
```bash
   cp -v elastos-esc-oracle-v0.2.4.2/getPledgeBillBurnLogsByHeight.js ~/node/esc-oracle/
   cp -v elastos-esc-oracle-v0.2.4.2/getPledgeBillBurnLogsByHeight.js ~/node/esc/esc-oracle/
```   
   

  
6. Start esc-oracle
```bash
   ~/node/node.sh esc-oracle start
```
7. Delete download file and folder
```bash
   rm -rf elastos-esc-oracle-v0.2.4.2.tgz
   rm -rf elastos-esc-oracle-v0.2.4.2
``` 
