# The ELA v0.9.8.1 upgrade[20241202]

The upgrade mainly includes:

- Resolving the issue of auxblock submission errors during mining.

## Manual Upgrade Steps

### 1. Replace Data (if required)

- **Check Node Height**:  
  Verify the node height via [https://ela.elastos.io](https://ela.elastos.io).  
  - If the node height is consistent, you can skip this step.  
  - If the node height is inconsistent, follow the steps below to replace the data.

- **Replace Data Instructions**:
  1. Stop the node and navigate to the Elastos directory of the ELA node.
  2. Download the data file:  
     [https://chain-data-temp.elastos.io/ela-data-2024-11-30.tar.gz](https://chain-data-temp.elastos.io/ela-data-2024-11-30.tar.gz)
  3. Delete the existing data files in the Elastos directory.
  4. Extract the downloaded file.
  5. Restart the node after extraction is complete.


### 2. Upgrade the ELA Node

1. **Download the New Version**:  
   [https://download.elastos.io/elastos-ela/elastos-ela-v0.9.8.1](https://download.elastos.io/elastos-ela/elastos-ela-v0.9.8.1)

2. **Stop the Current Node**:  
   Halt the running ELA node.

3. **Replace the ELA Node**:  
   Replace the old node binary with the newly downloaded version.

4. **Start the Node**:  
   Restart the node with the new version.

5. **Check Node Status**:  
   Ensure the node is running correctly and synchronized.
