echo "###########################################"
echo "VAGRANT DHCP OPTION ENABLING SCRIPT"
echo "###########################################"
echo "Press enter to enable DHCP for the VM now"
echo "enter..."
read 
##Enable Dhcp
sed -i 's/#dhcpip/  /g' Vagrantfile
echo "-------------------------------------------"
echo "SHOWING DHCP line instanced in Vagranfile: "
cat Vagrantfile | grep dhcp
echo "-------------------------------------------"
echo "SCRIPT TERMINATED, PRESS ENTER TO CLOSE THE"
echo "SESSION NOW..."
read



