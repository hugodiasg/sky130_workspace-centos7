echo "Download and install magic"
# download
git clone https://github.com/RTimothyEdwards/magic.git
cd magic
#git checkout magic-8.3
# compile & install
sudo ./configure
sudo make
sudo make install
cd ..
#download the open pdk
git clone https://github.com/RTimothyEdwards/open_pdks
cd open_pdks
#git checkout open_pdks-1.0
sudo ln -s /usr/local/bin/magic /usr/bin/
sudo ./configure --enable-sky130-pdk=/home/hugodg/sky130_workspace-centos7/skywater-pdk/libraries
sudo make
sudo make install
cd ../..
sudo ln -s /home/hugodg/sky130_workspace-centos7/open_pdks/sky130/sky130A/libs.tech/magic/* /usr/local/lib/magic/sys/
