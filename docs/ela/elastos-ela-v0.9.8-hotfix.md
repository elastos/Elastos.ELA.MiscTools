# The ELA v0.9.8 upgrade[20240919]

The upgrade mainly includes:

- Fix some node height out of sync issues because fork

   
##  Upgrade the ela data ,  Note: ela node in the "~/node/ela" path for example, if your ela node is not this path, please replace your ela node path
## Upgrade Steps
1. Log in to the server
2. Stop ela node
   
```bash
~/node/node.sh ela stop
```
3. Enter the ela node elastos directory

```bash
cd ~/node/ela/elastos
```

4. Download node ela elastos data

```bash
wget https://chain-data-temp.elastos.io/ela-data-2024-11-30.tar.gz
```

5. Delete the elastos folder

```bash
rm -rf ~/node/ela/elastos/data
```

5. Unzip the ela-data-2024-11-30.tar.gz file

```bash
tar -zxvf ela-data-2024-11-30.tar.gz
```

6. Start the ela node

```bash
$ ~/node/node.sh start
```


