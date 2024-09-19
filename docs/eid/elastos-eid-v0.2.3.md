# The EID v0.2.3 upgrade[20240918]

The upgrade mainly includes:
- Upgrade to Shanghai version
- Fix bugs
## Automatic upgrade steps
## Note:Automatic upgrade is applicable to EID node that meet a fixed directory structure: node files exist in the directory:~/node/eid, if your eid node directory structure is not met, please use manual upgrade。
1. Log in to the server
2. Update the latest eid node

```bash
$ ~/node/node.sh eid update
```

3. Start eid node

```bash
$ ~/node/node.sh eid start
```


## Manual upgrade steps

1. Download eid node

```
https://download.elastos.io/elastos-eid/elastos-eid-v0.2.3
```

2. Stop eid node
3. Replace eid node
4. Start eid node
