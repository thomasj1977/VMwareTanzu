echo
echo Unzipping Carvel tools
gunzip cli/imgpkg-linux-amd64-v0.22.0+vmware.1.gz --force
gunzip cli/kapp-linux-amd64-v0.42.0+vmware.2.gz --force
gunzip cli/kbld-linux-amd64-v0.31.0+vmware.1.gz --force
gunzip cli/vendir-linux-amd64-v0.23.1+vmware.1.gz --force
gunzip cli/ytt-linux-amd64-v0.37.0+vmware.1.gz --force
echo
echo Installing Carvel tools
sudo install cli/imgpkg-linux-amd64-v0.22.0+vmware.1 /usr/local/bin/imgpkg
sudo install cli/kapp-linux-amd64-v0.42.0+vmware.2 /usr/local/bin/kapp
sudo install cli/kbld-linux-amd64-v0.31.0+vmware.1 /usr/local/bin/kbld
sudo install cli/vendir-linux-amd64-v0.23.1+vmware.1 /usr/local/bin/vendir
sudo install cli/ytt-linux-amd64-v0.37.0+vmware.1 /usr/local/bin/ytt
echo
echo Verifying Carvel tools
imgpkg version
kapp version
kbld version
vendir version
ytt version

kapp completion bash | grep -v Succeeded > ~/.bashrc
