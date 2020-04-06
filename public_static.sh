echo "####################################################"
echo "VAGRANT PUBLIC STATIC IP ASSIGNMENT SCRIPT"
echo "####################################################"
echo "Enter a public ip address for your Vagrant VM, "
echo "in the following format: x.x.x.x and press enter..."
echo "enter..."
read public_ipaddress
echo "----------------------------------------------------"
echo "YOU ENTERED: $public_ipaddress"
echo "----------------------------------------------------"
#Enable Static ip
echo "PRESS ENTER TO CONFIRM NOW, OR CTRL+C TO ABORT..."
read
sed -i 's/#staticpublic/  /g' Vagrantfile
sed -i '/$public_ipaddress/a\'"  config.vm.network 'public_network', ip:'${public_ipaddress}'" Vagrantfile
#comment line
sed -i 's/.*$public_ipaddress/#&/' Vagrantfile
#delete line
sed -i '/$public_ipaddress/d' Vagrantfile
#Insert space, or indent 4 blocks forward
#sed -i -e 's/v.memory/    v.memory/' Vagrantfile
echo "-------------------------------------------"
echo "SHOWING Public Static ip address instanced in Vagranfile: "
cat Vagrantfile | grep $public_ipaddress
echo "---------------------------------------------------"
echo "SCRIPT TERMINATED, PRESS ENTER TO CLOSE THE"
echo "SESSION NOW..."
read

