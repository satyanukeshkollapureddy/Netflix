vim .bashrc
export PATH=$PATH:/usr/local/bin/
source .bashrc

===================================================


cat > trivy_install.sh << 'EOF'
#!/bin/bash

echo "Installing Trivy..."

wget https://github.com/aquasecurity/trivy/releases/download/v0.18.3/trivy_0.18.3_Linux-64bit.tar.gz

tar zxvf trivy_0.18.3_Linux-64bit.tar.gz

sudo mv trivy /usr/local/bin/

trivy --version

echo "Trivy installation completed successfully!"
EOF
