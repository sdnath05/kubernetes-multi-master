sudo rm -rf /etc/etcd /var/lib/etcd

sudo mkdir -p /etc/etcd /var/lib/etcd

sudo cp ../cfssl/ca.pem ../cfssl/kubernetes.pem ../cfssl/kubernetes-key.pem /etc/etcd

sudo cp etcd* /usr/local/bin/

# !!!Important!!! Change the IPs accordingly, for the master node IP. In --initial-cluster add your master nodes IPs
sudo cp master2/etcd.service /etc/systemd/system/etcd.service

sudo systemctl daemon-reload

sudo systemctl enable etcd

sudo systemctl start etcd

sudo chmod 700 /var/lib/etcd

ETCDCTL_API=3 etcdctl member list
