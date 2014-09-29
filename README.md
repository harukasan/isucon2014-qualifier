isucon2014 qualifier
=====================

working repo of "椅子子" for ISUCON4 quorifier.

## Usage

This code is written for ISUCON4 quorifier AMI.
You should put or link configure files.

```bash
sudo su - isucon
git clone https://github.com/harukasan/isucon2014-qualifier

REPO=/home/isucon/isucon2014-qualifier

sudo mv /etc/nginx/nginx.conf{,.original}
sudo ln -s $REPO/config/nginx.conf /etc/nginx/nginx.conf
sudo /etc/init.d/nginx/reload

sudo mv /etc/my.cnf{,.original}
sudo ln -s $REPO/config/my.conf /etc/my.conf
sudo /etc/init.d/mysqld restart

sudo mv /etc/sysctl.conf{,original}
sudo cp $REPO/config/sysctl.conf /etc/sysctl.conf
sudo sysctl -p
```

## Copyright

Copyright 2014 Shunsuke MICHII and contributors.

This code is licensed under MIT License.

This code is based on the reference ruby implementation of the ISUCON4 quorifier. Original codes are copyrighted below:

### Original Copyright: 

&copy; Cookpad Inc. 2014
