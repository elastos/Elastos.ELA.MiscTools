# The ELA v0.9.9.3 upgrade[20250808]

The upgrade mainly includes:

- Fixed an issue where illegal proposals could occur due to occasional low server performance

## Automatic upgrade using node.sh

1. Log in to the server
2. Update the latest node.sh

```bash
  ~/node/node.sh update_script
```

2. Update the latest ela node

```bash
  ~/node/node.sh ela update
```

3. Start ela node

```bash
  ~/node/node.sh ela start
```

4. Check node status

```bash
  ~/node/node.sh ela status
```

## Manual upgrade steps

1. Download ela node

```
https://download.elastos.io/elastos-ela/elastos-ela-v0.9.9.3/
```

2. Stop ela node
3. Replace ela node
4. Start ela node
5. Check node status

