echo "###########################################"
echo "VAGRANT NAME PROVISIONING SCRIPT"
echo "###########################################"
echo "Enter a name for your Vagrant VM, and press"
echo "enter..."
read my_vmname
echo "-------------------------------------------"
echo "YOU ENTERED: $my_vmname"
echo "-------------------------------------------"
echo "PRESS ENTER TO CONFIRM NOW, OR CTRL+C TO ABORT..."
read
#Enable Vm provider parameters
sed -i 's/#vmprovider/  /g' Vagrantfile
#VMName
sed -i 's/#vmname/    /g' Vagrantfile
sed -i '/$my_vmname/a\'"v.name = '${my_vmname}'#vmname" Vagrantfile
#comment line
sed -i 's/.*my_vmname/#&/' Vagrantfile
#delete line
sed -i '/my_vmname/d' Vagrantfile
#Insert space, or indent 4 blocks forward
sed -i -e 's/v.name/    v.name/' Vagrantfile

#Provider end
sed -i 's/#provisionend/  /g' Vagrantfile
echo "-------------------------------------------"
echo "SHOWING VM Name line instanced in Vagranfile: "
cat Vagrantfile | grep v.name
echo "-------------------------------------------"
echo "SCRIPT TERMINATED, PRESS ENTER TO CLOSE THE"
echo "SESSION NOW..."
read




