echo "####################################################"
echo "VAGRANT FOWARDED PORT ASSIGNMENT SCRIPT"
echo "####################################################"
echo "Enter a port to fowrard, for your 'host' parameter"
echo "in your Vagrantfile and press enter..."
read forwarded_port_ipaddress
echo "----------------------------------------------------"
echo "YOU ENTERED: $forwarded_port_ipaddress"
echo "----------------------------------------------------"
#Enable Static ip
echo "PRESS ENTER TO CONFIRM NOW, OR CTRL+C TO ABORT..."
read
sed -i 's/#dconfig/  /g' Vagrantfile
sed -i '/$forwarded_port/a\'"  config.vm.network 'forwarded_port', guest: 80, host: '${forwarded_port_ipaddress}'" Vagrantfile
#comment line
#sed -i 's/.*$forwarded_port/#&/' Vagrantfile
#delete line
sed -i '/$forwarded_port/d' Vagrantfile
#Insert space, or indent 4 blocks forward
#sed -i -e 's/v.memory/    v.memory/' Vagrantfile
echo "---------------------------------------------------"
echo "SHOWING FORWARDED PORT line instanced in Vagranfile: "
cat Vagrantfile | grep forwarded_port
echo "---------------------------------------------------"
echo "SCRIPT TERMINATED, PRESS ENTER TO CLOSE THE"
echo "SESSION NOW..."
read

