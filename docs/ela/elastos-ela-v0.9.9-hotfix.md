# The Arbiter config.json upgrade[20250510]

The upgrade mainly includes:

- Configure the arbiter config.json file to support a new sidechain.

## Automatic upgrade using node.sh

1. Log in to the server
2. Update the latest node.sh

```bash
  ~/node/node.sh update_script
```

3. Initialize the new sidechain

```bash
 ~/node/node.sh pgp init
```
4. Initialize the new sidechain oracle

```bash
 ~/node/node.sh pgp-oracle init
```
5. Update the arbiter config.json configuration file

```bash
 ~/node/node.sh arbiter modify_configfile
```
6. Restart the arbiter node

```bash
 ~/node/node.sh arbiter start
```

