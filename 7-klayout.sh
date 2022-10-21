
#klayout
wget https://www.klayout.org/downloads/CentOS_7/klayout-0.27.11-0.x86_64.rpm
sudo rpm -ivh klayout-0.27.11-0.x86_64.rpm 
klayout &

#sky130 tech
cd ~/.klayout
mkdir tech
cd tech
git clone https://github.com/mabrains/sky130_klayout_pdk.git sky130
#pip install pandas
cd /home/hugodg/sky130_workspace-centos7

