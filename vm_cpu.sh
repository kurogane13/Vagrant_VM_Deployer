echo "#############################################"
echo "VAGRANT CPU CORES ALLOCATION SCRIPT"
echo "#############################################"
echo "Enter amount of CPU CORES for your Vagrant VM," 
echo "and press enter..."
read cpu_cores
echo "-------------------------------------------"
echo "YOU ENTERED: $cpu_cores"
echo "-------------------------------------------"
echo "PRESS ENTER TO CONFIRM NOW, OR CTRL+C TO ABORT..."
read
#Enable Vm provider parameters
sed -i 's/#vmprovider/  /g' Vagrantfile
#Enable Vm provider parameters
sed -i 's/#vmcpucores/  /g' Vagrantfile
sed -i '/$cpu_cores/a\'"v.cpus = '${cpu_cores}'#cpucores" Vagrantfile
#comment line
sed -i 's/.*$cpu_cores/#&/' Vagrantfile
#delete line
sed -i '/$cpu_cores/d' Vagrantfile
#Insert space, or indent 4 blocks forward
sed -i -e 's/v.cpus/    v.cpus/' Vagrantfile

#Provider end
sed -i 's/#provisionend/  /g' Vagrantfile
echo "-------------------------------------------"
echo "SHOWING VM CPU CORES line instanced in Vagranfile: "
cat Vagrantfile | grep v.cpus
echo "-------------------------------------------"
echo "SCRIPT TERMINATED, PRESS ENTER TO CLOSE THE"
echo "SESSION NOW..."
read



