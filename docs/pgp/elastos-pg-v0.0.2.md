# The PG chain upgrade[20251105]

The upgrade mainly includes:

- Configure the arbiter config.json file to support a new pg chain.
- Setup pg chain
  
Note: Before upgrading, please ensure the following ports are open: 20670, 20672, 20676, 20678, 20679

PG chain ：The ports and types that need to be opened are as follows:

PG-Bootnode：       | udp type      ｜ 20670

PG-Oracle：         | TCP type      ｜ 20672

PG                  | TCP type      | 20676  

PG                  | TCP+UDP type  | 20678 

PG                  | TCP  type     | 20679  
## Automatic upgrade using node.sh

1. Log in to the server
2. Update the latest node.sh

```bash
  ~/node/node.sh update_script
```

3. Initialize the pg chain
   
   Note:
   - Press Enter to generate a random password by default, or enter a password of your choice to confirm
   - You must input an alternative pg reward address that is not different with keystore address
   

```bash
 ~/node/node.sh pg init
```
4. Initialize the pg chain's oracle

```bash
 ~/node/node.sh pg-oracle init
```
5. Update the arbiter config.json configuration file

```bash
 ~/node/node.sh arbiter modify_configfile
```
6. Stat the pg chain
```bash
 ~/node/node.sh pg start
```
7. Stat the pg-oracle
```bash
 ~/node/node.sh pg-oracle start
``` 
8. Restart the arbiter node

```bash
 ~/node/node.sh arbiter start
```

