# The Arbiter v0.3.1 upgrade[20211216]

The elastos-arbiter-v0.3.1 version has been released. The upgrade mainly includes:
- remove logic of creating return failed deposit transaction

## Automatic upgrade steps

1. Log in to the server
2. Enter the node directory

```bash
cd ~/node/
```

3. Download node update script

```bash
wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/arbiter/elastos-arbiter-v0.3.1.sh
```

4. Script permission changes

```bash
chmod a+x ~/node/elastos-arbiter-v0.3.1.sh
```

5. Execute node update script

```bash
~/node/elastos-arbiter-v0.3.1.sh
```

6. Check node operating status

```bash
~/node/node.sh status
```

## Manual upgrade steps

1. Download arbiter node

```bash
https://download.elastos.org/elastos-arbiter/elastos-arbiter-v0.3.1
```

2. Close arbiter node
3. Replace arbiter node
4. Start arbiter node