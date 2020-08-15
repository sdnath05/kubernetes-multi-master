sudo cp cfssl* /usr/local/bin
sudo chmod +x /usr/local/bin/cfssl*

# Generate the certificate authority certificate and private key.
cfssl gencert -initca ca-csr.json | cfssljson -bare ca

# Generate the certificate and private key.
cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=ca-config.json -hostname=192.168.50.11,192.168.50.12,192.168.50.13,127.0.0.1,kubernetes.default -profile=kubernetes kubernetes-csr.json | cfssljson -bare kubernetes
