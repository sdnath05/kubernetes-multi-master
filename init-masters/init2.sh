sudo kubeadm init --config=master2/config.yml


mkdir -p $HOME/.kube && sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config && sudo chown -R $(id -u):$(id -g) $HOME/.kube