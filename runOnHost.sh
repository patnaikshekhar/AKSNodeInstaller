#!/bin/bash

# Copy installation script to host
cp /tmp/install.sh /host

# Copy wait script to the host 
cp /wait.sh /host

# Wait for updates to complete
/usr/bin/nsenter -m/proc/1/ns/mnt -- chmod u+x /tmp/install/wait.sh

# Give execute priv to script
/usr/bin/nsenter -m/proc/1/ns/mnt -- chmod u+x /tmp/install/install.sh

# Wait for Node updates to complete
/usr/bin/nsenter -m/proc/1/ns/mnt /tmp/install/wait.sh

# If the /tmp folder is mounted on the host then it can run the script
/usr/bin/nsenter -m/proc/1/ns/mnt -n/proc/1/ns/net -u/proc/1/ns/uts -- /tmp/install/install.sh

# Sleep so that the Pod in the DaemonSet does not exit
sleep infinity
