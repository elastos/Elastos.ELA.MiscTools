
# The ELA v0.9.9 upgrade[20250220]

The upgrade mainly includes:

- Resolve the issue of fork and reorganization
- Adjustment of consensus mechanism
- Illegal mechanism activated

## Automatic upgrade using node.sh

1. Log in to the server
2. Update the latest ela node

```bash
~/node/node.sh ela update
```

3. Start ela node

   The first time you start the node will initialize the node, after it is completed, it will synchronize the block
   height, this process will be determined by the server memory to complete the time, please wait patiently...

```bash
~/node/node.sh ela start
```

4. Check node status

```bash
~/node/node.sh status
```

## Manual upgrade steps

1. Download ela node

```
https://download.elastos.io/elastos-ela/elastos-ela-v0.9.9
```

2. Stop ela node
3. Replace ela node
4. Start ela node

   The first time you start the node will initialize the node, after it is completed, it will synchronize the block
   height, this process will be determined by the server memory to complete the time, please wait patiently...

5. Check node status
