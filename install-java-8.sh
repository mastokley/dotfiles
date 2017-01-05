wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u66-b17/jdk-8u66-linux-x64.tar.gz

mkdir ~/opt/java-8
mv ~/jdk-8u66-linux-x64.tar.gz ~/opt/java-8
tar x -C ~/opt/jdk -f jdk-8u66-linux-x64.tar.gz

sudo update-alternatives --install /usr/bin/java java ~/opt/jdk/jdk1.8.0_66/bin/java 100
sudo update-alternatives --install /usr/bin/javac javac ~/opt/jdk/jdk1.8.0_66/bin/javac 100

printf "must run:\n\nsudo update-alternatives --config java; sudo update-alternatives --config javac;\n"
