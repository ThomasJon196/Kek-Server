
# ssh into kek-server (configure in .ssh/config)
ssh kek-server

# Setup sd partition
##
# List all devices
sudo fdisk -l

# Create partition
echo 'Chose device which should be mounted'
read device
sudo fdisk $device

# Mount directory
echo 'Choose partition to mount (e.g. dev/sdb1): '
read partition
echo 'Choose mountpoint (e.g. /mnt/example)'
read mountpoint
mkdir $mountpoint
sudo mount $partition $mountpoint


# Create file system on device
echo 'Creating ext4 filesystem on device'
sudo mkfs.ext4 $partition

# Set permissions
echo 'Setting mountpoint permissions to current user with rwx mode.'
user=$(whoami)
chown $user $mountpoint
chmod u+rwx $mountpoint

