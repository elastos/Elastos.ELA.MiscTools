# The Arbiter config.json upgrade[20250510]

The upgrade mainly includes:

- Configure the arbiter config.json file to support a new sidechain.
  
Note: Before upgrading, please ensure the following ports are open: 20650, 20652, 20656, 20658, 20659
## Automatic upgrade using node.sh

1. Log in to the server
2. Update the latest node.sh

```bash
  ~/node/node.sh update_script
```

3. Initialize the new sidechain
   Note: Press Enter to generate a random password by default, or enter a password of your choice to confirm 

```bash
 ~/node/node.sh eco init
```
4. Initialize the new sidechain oracle

```bash
 ~/node/node.sh eco-oracle init
```
5. Update the arbiter config.json configuration file

```bash
 ~/node/node.sh arbiter modify_configfile
```
6. Stat the eco sidechain
```bash
 ~/node/node.sh eco start
```
7. Stat the eco-oracle
```bash
 ~/node/node.sh eco-oracle start
``` 
8. Restart the arbiter node

```bash
 ~/node/node.sh arbiter start
```
