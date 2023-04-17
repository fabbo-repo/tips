# Backups

## Setup

To configure compression for backups on TrueNAS, you can follow these steps:

1- Open the **TrueNAS** web interface and navigate to the ```Storage > Replication Tasks``` page.

2- Click the ```Add Replication Task``` button to create a new backup task.

3- Configure the source and destination for the backup task as needed.

4- In the ```Advanced Options``` section, expand the ```Compression``` options.

5- Choose the compression algorithm you want to use from the ```Compression``` drop-down menu. **TrueNAS** supports several compression algorithms, including gzip, bzip2, lz4, and zstd.

6- Set the Compression Level option to the desired compression level. Higher compression levels will result in smaller backup files, but may also take longer to complete.

7- Save your changes and run the backup task.

Once the backup task is complete, you should see compressed backup files in the destination directory.