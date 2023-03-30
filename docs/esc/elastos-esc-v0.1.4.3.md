# The ESC v0.1.4.3 upgrade[20211229]

The elastos-esc-v0.1.4.3 version has been released. The upgrade mainly includes:
- Fixed spv not received tx receipt bug

## Automatic upgrade steps

1. Log in to the server
2. Enter the node directory

```bash
cd ~/node/
```

3. Download node update script

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/esc/elastos-esc-v0.1.4.3.sh
```
4. Script permission changes

```bash
chmod a+x ~/node/elastos-esc-v0.1.4.3.sh
```

5. Execute node update script

```bash
~/node/elastos-esc-v0.1.4.3.sh
```

6. Check node operating status

```bash
~/node/node.sh status
```

## Manual upgrade steps

1. Download esc node

```bash
https://download.elastos.io/elastos-esc/elastos-esc-v0.1.4.3
```

2. Close esc node
3. Replace esc node
4. Start esc node