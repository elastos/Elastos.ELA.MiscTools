# The ELA v0.9.3 upgrade[20230415]

The upgrade mainly includes:

- Resolving height non-growth caused by unupgraded nodes in the community

## Automatic upgrade steps

1. Log in to the server
2. Update the latest ela node

```bash
$ ~/node/node.sh ela update
```

3. Delete the checkpoints directory

```bash
$ rm -r ~/node/ela/elastos/data/checkpoints
```

4. Start ela node

   The first time you start the node will initialize the node, after it is completed, it will synchronize the block
   height, this process will be determined by the server memory to complete the time, please wait patiently...

```bash
$ ~/node/node.sh ela start
```

## Manual upgrade steps

1. Download ela node

```
https://download.elastos.io/elastos-ela/elastos-ela-v0.9.3
```

2.  Stop ela node
3. Replace ela node
4. Delete the checkpoints directory

```bash
$ rm -r ~/node/ela/elastos/data/checkpoints
```

5. Start ela node

   The first time you start the node will initialize the node, after it is completed, it will synchronize the block
   height, this process will be determined by the server memory to complete the time, please wait patiently...
