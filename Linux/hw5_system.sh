#!/bin/bash
# Free memory output sent to a free_mem.txt file
free -h >> backups/freemem/free_mem.txt
# Disk usage output sent to a disk_usage.txt file
du -h >> backups/diskuse/disk_usage.txt
# All open files listed and sent to a open_list.txt file
lsof >> backups/openlist/open_list.txt
# Free system disk space stats sent to a free_disk.txt file
df -h >> backups/freedisk/free_disk.txt 

