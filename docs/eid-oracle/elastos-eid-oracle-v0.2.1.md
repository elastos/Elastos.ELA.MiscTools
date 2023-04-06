# The EID-Oracle v0.2.1 upgrade[20230330]

The upgrade mainly includes:

- Support small recharge fast arrival

## Automatic upgrade steps

1. Log in to the server
2. Update the latest eid-oracle

```bash
$ ~/node/node.sh eid-oracle update
```

3. Start eid-oracle

```bash
$ ~/node/node.sh eid-oracle start
```

## Manual upgrade steps

1. Download eid-oracle

```bash
https://download.elastos.io/elastos-eid-oracle/elastos-eid-oracle-v0.2.1
```

2. Close eid-oracle
3. Replace the js file of eid-oracle
4. Start eid-oracle