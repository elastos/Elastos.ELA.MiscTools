# The PGP chain of 5 seconds closed upgrade[20251105]

The upgrade mainly includes:

- Close the PGP chain of 5 seconds 
- Remove PGP chain configuration from arbiter.
  
## Automatic upgrade using node.sh

1. Log in to the server

2. Update the latest node.sh

```bash
~/node/node.sh update_script
```

3. Stop the pgp chain

```bash
~/node/node.sh pgp stop
```

4. Stop the pgp-oracle

```bash
~/node/node.sh pgp-oracle stop
``` 

5. Update the arbiter config.json to remove PGP chain configuration

```bash
~/node/node.sh arbiter remove_sidechain_config
```

6. Restart the arbiter node

```bash
~/node/node.sh arbiter start
```

