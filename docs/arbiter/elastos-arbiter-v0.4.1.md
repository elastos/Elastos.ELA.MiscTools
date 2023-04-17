# The Arbiter v0.4.1 upgrade[20230418]

The elastos-arbiter-v0.4.1 version has been released. The upgrade mainly includes:

- Support for NFT transactions

## Automatic upgrade using node.sh

1. Log in to the server
2. Update the latest arbiter node

```bash
$ ~/node/node.sh arbiter update
```

3. Check arbiter node status

```bash
$ ~/node/node.sh arbiter status
```

## Manual upgrade steps

1. Download arbiter node

```bash
https://download.elastos.io/elastos-arbiter/elastos-arbiter-v0.4.1
```

2. Close arbiter node
3. Replace arbiter node

4. Delete the arbiter data

```bash
$ rm -r ~/node/arbiter/elastos_arbiter/data
```

5. Start arbiter node