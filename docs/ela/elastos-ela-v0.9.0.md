# The ELA v0.9.0 upgrade[20230330]

The upgrade mainly includes:
- Support for BPoS register，update and stake related transactions 
- Support for Schnorr multi-signature transactions 
- Support for NFT transactions

## Automatic upgrade steps

1. Log in to the server
2. Enter the node directory

```bash
$ cd ~/node/
```

3. Download node update script

```bash
$ wget https://raw.githubusercontent.com/elastos/Elastos.ELA.MiscTools/master/upgrade/ela/elastos-ela-v0.9.0.sh
```

4. Script permission changes

```bash
$ chmod a+x ~/node/elastos-ela-v0.9.0.sh
```

5. Execute node update script

```bash
$ ~/node/elastos-ela-v0.9.0.sh
```

6. Check node operating status

```bash
$ ~/node/node.sh status
```

## Manual upgrade steps

1. Download ela node

```
https://download.elastos.io/elastos-ela/elastos-ela-v0.9.0
```

2. Stop ela node
3. Replace ela node
4. Delete the checkpoints directory

```bash
$ rm -r ~/node/ela/elastos/data/checkpoints
```

5. Start ela node