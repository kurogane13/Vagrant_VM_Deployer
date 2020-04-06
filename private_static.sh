echo "####################################################"
echo "VAGRANT PRIVATE STATIC IP ASSIGNMENT SCRIPT"
echo "####################################################"
echo "Enter a private ip address for your Vagrant VM, "
echo "in the following format: x.x.x.x and press enter..."
echo "enter..."
read private_ipaddress
echo "----------------------------------------------------"
echo "YOU ENTERED: $private_ipaddress"
echo "----------------------------------------------------"
#Enable Static ip
echo "PRESS ENTER TO CONFIRM NOW, OR CTRL+C TO ABORT..."
read
sed -i 's/#staticprivate/  config/g' Vagrantfile
sed -i '/$private_ipaddress/a\'"  config.vm.network 'private_network', ip:'${private_ipaddress}'#privatestatic" Vagrantfile
#comment line
sed -i 's/.*$private_ipaddress/#&/' Vagrantfile
#delete line
sed -i '/$private_ipaddress/d' Vagrantfile
#Insert space, or indent 4 blocks forward
#sed -i -e 's/v.memory/    v.memory/' Vagrantfile
echo "-------------------------------------------"
echo "SHOWING Private Static ip address line instanced in Vagranfile: "
cat Vagrantfile | grep $private_ipaddress
echo "---------------------------------------------------"
echo "SCRIPT TERMINATED, PRESS ENTER TO CLOSE THE"
echo "SESSION NOW..."
read

#Private IP

