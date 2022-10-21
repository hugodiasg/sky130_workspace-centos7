wget -O adms.tar.gz https://sourceforge.net/projects/mot-adms/files/adms-source/2.3/adms-2.3.6.tar.gz/download

tar zxvpf adms.tar.gz 

#install gcc
wget http://ftp.mirrorservice.org/sites/sourceware.org/pub/gcc/releases/gcc-7.3.0/gcc-7.3.0.tar.gz
tar zxf gcc-7.3.0.tar.gz
cd gcc-7.3.0
sudo yum -y install bzip2
sudo yum install gcc-c++ -y
./contrib/download_prerequisites
./configure --disable-multilib --enable-languages=c,c++
make -j 4
make install
cd ..

#install adms
cd adms-2.3.6/
./configure 
sudo make
sudo make install
cd ..

#install ngspice
git clone git://git.code.sf.net/p/ngspice/ngspice
cd ngspice/
git checkout pre-master
wget -O ngspice-adms-va.7z https://sourceforge.net/projects/ngspice/files/ng-spice-rework/37/ngspice-adms-va.7z/download
7za e ngspice-adms-va.7z  -aoa
./autogen.sh --adms
mkdir release
cd release
../configure --with-x --enable-xspice --disable-debug --enable-cider --with-readline=yes --enable-adms CFLAGS=-std=c99
sudo make CFLAGS=-std=c99
sudo make install
cd ../..
