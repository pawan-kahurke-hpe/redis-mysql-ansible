echo "starting-script"

echo "checking volume"
sudo file -s /dev/xvdb

echo "intializing volume as file system"
sudo mkfs -t xfs /dev/xvdb

echo "mounting volume to path"
sudo mkdir /var/lib/mysql
sudo mount /dev/xvdb /var/lib/mysql
echo "checking mounting status"
sudo df -h | grep xvdb


echo "updating fstab"
value=`sudo blkid | grep  "xvdb"|  cut -d "\\"" -f 2`
echo $value
echo "UUID=${value} /var/lib/mysql xfs  defaults,nofail  0  2" >> /etc/fstab

sudo chown -R mysql:mysql /var/lib/mysql
