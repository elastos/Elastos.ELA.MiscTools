# The ESC v0.2.5 upgrade[20240918]

The elastos-esc-v0.2.5 version has been released. The upgrade mainly includes:
- Upgrade to Shanghai version
- Add reading of main chain block header contracts
- Fix bugs 

## Automatic upgrade steps
Note：Automatic upgrade is applicable to ESC nodes that meet a fixed directory structure: node files exist in the directory:~/node/esc, if your esc node directory structure is not met, please use manual upgrade。

1. Log in to the server
2. Update the latest esc node

```bash
$ ~/node/node.sh esc update
```

3. Start esc node

```bash
$ ~/node/node.sh esc start
```

## Manual upgrade steps

1. Download esc node

```bash
https://download.elastos.io/elastos-esc/elastos-esc-v0.2.5
```

2. Stop esc node
3. Replace esc node
4. Start esc node
