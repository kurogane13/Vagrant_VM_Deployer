echo "###########################################"
echo "VAGRANT RAM ALLOCATION PROVISIONING SCRIPT"
echo "###########################################"
echo "Enter amount of RAM for your Vagrant VM, and press"
echo "enter..."
read ram_mem
echo "-------------------------------------------"
echo "YOU ENTERED: $ram_mem"
echo "-------------------------------------------"
echo "PRESS ENTER TO CONFIRM NOW, OR CTRL+C TO ABORT..."
read
#Enable Vm provider parameters
sed -i 's/#vmprovider/  /g' Vagrantfile
#VMName
sed -i 's/#vmram/    /g' Vagrantfile
sed -i '/$my_vmram/a\'"v.memory = '${ram_mem}'#vmrammemory" Vagrantfile
#comment line
sed -i 's/.*$my_vmram/#&/' Vagrantfile
#delete line
sed -i '/$my_vmram/d' Vagrantfile
#Insert space, or indent 4 blocks forward
sed -i -e 's/v.memory/    v.memory/' Vagrantfile

#Provider end
sed -i 's/#provisionend/  /g' Vagrantfile
echo "-------------------------------------------"
echo "SHOWING VM RAM line instanced in Vagranfile: "
cat Vagrantfile | grep v.memory
echo "-------------------------------------------"
echo "SCRIPT TERMINATED, PRESS ENTER TO CLOSE THE"
echo "SESSION NOW..."
read




