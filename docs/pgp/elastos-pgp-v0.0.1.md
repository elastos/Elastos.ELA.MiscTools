# The PGP chain upgrade[20251105]

The upgrade mainly includes:

- Configure the arbiter config.json file to support a new pgp sidechain.
- Setup pgp chain
  
Note: Before upgrading, please ensure the following ports are open: 20660, 20662, 20666, 20668, 20669

PGP sidechain ：The ports and types that need to be opened are as follows:

PGP-Bootnode：       | udp type      ｜ 20660

PGP-Oracle：         | TCP type      ｜ 20662

PGP                  | TCP type      | 20666  

PGP                  | TCP+UDP type  | 20668 

PGP                  | TCP  type     | 20669  
## Automatic upgrade using node.sh

1. Log in to the server
2. Update the latest node.sh

```bash
  ~/node/node.sh update_script
```

3. Initialize the pgp sidechain
   
   Note:
   - Press Enter to generate a random password by default, or enter a password of your choice to confirm
   - You must input an alternative pgp reward address that is not different with keystore address
   

```bash
 ~/node/node.sh pgp init
```
4. Initialize the pgp sidechain oracle

```bash
 ~/node/node.sh pgp-oracle init
```
5. Update the arbiter config.json configuration file

```bash
 ~/node/node.sh arbiter modify_configfile
```
6. Stat the pgp sidechain
```bash
 ~/node/node.sh pgp start
```
7. Stat the pgp-oracle
```bash
 ~/node/node.sh pgp-oracle start
``` 
8. Restart the arbiter node

```bash
 ~/node/node.sh arbiter start
```
