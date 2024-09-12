# The ESC v0.2.5 upgrade[20240918]

The elastos-esc-v0.2.5 version has been released. The upgrade mainly includes:
- Upgrade to Shanghai version
- Add reading of main chain block header contracts
- Fix bugs 

## Automatic upgrade steps

1. Log in to the server
2. Enter the node directory

```bash
cd ~/node/
```

3. Download node update script

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/esc/elastos-esc-v0.2.5.sh
```
4. Script permission changes

```bash
chmod a+x ~/node/elastos-esc-v0.2.5.sh
```

5. Execute node update script

```bash
~/node/elastos-esc-v0.2.5.sh
```

6. Check node operating status

```bash
~/node/node.sh status
```

## Manual upgrade steps

1. Download esc node

```bash
https://download.elastos.io/elastos-esc/elastos-esc-v0.2.5
```

2. Close esc node
3. Replace esc node
4. Start esc node
