echo "Download and install Xschem"
git clone https://github.com/StefanSchippers/xschem
cd xschem/
./configure
make 
sudo make install
cd ..
xschem &

# libs sky130 to xschem
echo "libs sky130 to xschem"
cd /home/hugodg/.xschem/simulations/
sudo cp /home/hugodg/sky130_workspace-centos7/utilities/.spiceinit .
sudo mkdir xschem_library
cd xschem_library/
sudo git clone https://github.com/StefanSchippers/xschem_sky130
cd /home/hugodg/sky130_workspace-centos7/
sudo ln -s /home/hugodg/.xschem/xschem_library/xschem_sky130
sudo ln -s /home/hugodg/sky130_workspace-centos7/skywater-pdk/libraries/sky130_fd_pr /usr/local/share/pdk/sky130A/libs.ref
