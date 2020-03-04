sudo apt-get update
sudo apt-get upgrade
sudo apt-get install make git zlib1g-dev libssl-dev gperf php cmake default-jdk g++
git clone https://github.com/tdlib/td.git
cd td
git checkout v1.6.0
rm -rf build
mkdir build
cd build
export CXXFLAGS=""
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=../example/java/td -DTD_ENABLE_JNI=ON ..
cmake --build . --target install
cd ..
cd example/java
rm -rf build
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=../../../tdlib -DTd_DIR:PATH=$(readlink -e ../td/lib/cmake/Td) ..
cmake --build . --target install
cd ../../..
cd ..
ls -l td/tdlib
export OS="ubuntu"
/bin/bash commit.sh