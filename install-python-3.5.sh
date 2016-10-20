sudo apt-get install postgresql libpq-dev libsqlite3-dev libncursesw5-dev libssl-dev libgdbm-dev libc6-dev tk-dev
wget https://www.python.org/ftp/python/3.5.2/Python-3.5.2.tar.xz
tar xvfJ Python-3.5.2.tar.xz
cd Python-3.5.2/
./configure --prefix=/opt/Python3.5.2
make
sudo make install
