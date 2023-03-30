# The Arbiter v0.4.0 upgrade[20230330]

The elastos-arbiter-v0.4.0 version has been released. The upgrade mainly includes:
- Support for NFT transactions

## Automatic upgrade steps

1. Log in to the server
2. Enter the node directory

```bash
$ cd ~/node/
```

3. Download node update script

```bash
$ wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/arbiter/elastos-arbiter-v0.4.0.sh
```

4. Script permission changes

```bash
$ chmod a+x ~/node/elastos-arbiter-v0.4.0.sh
```

5. Execute node update script

```bash
$ ~/node/elastos-arbiter-v0.4.0.sh
```

6. Check node operating status

```bash
$ ~/node/node.sh status
```

## Manual upgrade steps

1. Download arbiter node

```bash
https://download.elastos.io/elastos-arbiter/elastos-arbiter-v0.4.0
```

2. Close arbiter node
3. Replace arbiter node

4. Delete the arbiter data

```bash
$ rm -r ~/node/arbiter/elastos_arbiter/data
```

5. Start arbiter node