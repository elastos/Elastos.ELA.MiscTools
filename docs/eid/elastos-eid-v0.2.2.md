# The EID v0.2.2 upgrade[20230630]

The upgrade mainly includes:

- Improve node stability 
- Upgrade EVM to london version，Effective height:11079540

## Automatic upgrade steps

1. Log in to the server
2. Update the latest eid node

```bash
$ ~/node/node.sh eid update
```

3. Start esc node

```bash
$ ~/node/node.sh eid start
```

## Manual upgrade steps

1. Download eid node

```
https://download.elastos.io/elastos-eid/elastos-eid-v0.2.2
```

2. Stop eid node
3. Replace eid node
4. Start eid node