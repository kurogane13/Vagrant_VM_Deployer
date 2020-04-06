echo "####################################################"
echo "VAGRANT SYNCED FOLDER ASSIGNMENT SCRIPT"
echo "####################################################"
echo "Enter a full path to your HOST in order to sync it" 
echo "with your Vagrant VM, and press enter..."
read synced_folder_path
echo "----------------------------------------------------"
echo "YOU ENTERED: $synced_folder_path"
echo "----------------------------------------------------"
#Enable Static ip
echo "PRESS ENTER TO CONFIRM NOW, OR CTRL+C TO ABORT..."
read
sed -i 's/#synced_folder/  /g' Vagrantfile
sed -i '/$synced_folder_path/a\'"  config.vm.synced_folder '.', '"$synced_folder_path"', :nfs => ['"dmode=777"', '"fmode=666"']" Vagrantfile
#comment line
sed -i 's/.*$synced_folder_path/#&/' Vagrantfile
#delete line
sed -i '/$synced_folder_path/d' Vagrantfile
#Insert space, or indent 4 blocks forward
#sed -i -e 's/v.memory/    v.memory/' Vagrantfile
echo "-------------------------------------------"
echo "SHOWING SYNCED FOLDER line instanced in Vagranfile: "
cat Vagrantfile | grep vm.synced_folder
echo "---------------------------------------------------"
echo "SCRIPT TERMINATED, PRESS ENTER TO CLOSE THE"
echo "SESSION NOW..."
read

