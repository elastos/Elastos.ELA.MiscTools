# The PGP chain upgrade[20251105]

The upgrade mainly includes:

- Configure the arbiter config.json file to support a new pgp chain.
- Setup pgp chain
  
Note: Before upgrading, please ensure the following ports are open: 20660, 20662, 20666, 20668, 20669

PGP chain ：The ports and types that need to be opened are as follows:

PGP-Bootnode：       | udp type      ｜ 20660

PGP-Oracle：         | TCP type      ｜ 20662

PGP                  | TCP type      | 20666  

PGP                  | TCP+UDP type  | 20668 

PGP                  | TCP  type     | 20669  

## pgp hotfix upgrade steps

1. Log in to the server
2. Update the latest node.sh
   
```bash
~/node/node.sh update_script
```
3. Stop pgp chain node
   
```bash
~/node/node.sh pgp stop
```   
4. Delete pgp chain data
   
```bash
rm -rf  ~/node/pgp/data/pgp
```
5. Update pgp compile program
   
```bash
~/node/node.sh pgp update
```
6. Stop arbiter node
   
```bash
~/node/node.sh arbiter stop
```   
7. Update the arbiter config.json configuration file

```bash
sed -i 's/00b7957fbc9fa62e86d6e664299bebc9a939f108fd015f8de07ce33f4136175e/a3fdd5142d73a38b5db3f729cee4bcf902591831e46fdab4c1e222caf198abf4/g' ~/node/arbiter/config.json
```
8. Delete the pgp data in the arbiter node
   
```bash
rm -rf  ~/node/arbiter/elastos_arbiter/data/arbiter/PGP_sideChainCache.db
```    
10. Stat the pgp chain
   
```bash
~/node/node.sh pgp start
```
10. Restart the arbiter node

```bash
~/node/node.sh arbiter start
```

