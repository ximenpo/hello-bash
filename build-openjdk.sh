#!  /bin/env bash

yum install -y  zip unzip
yum install -y  gcc gcc-c++ libstdc++-static

X_ROOT_DIR=~/openjdk
X_ORACLE_JDK_DIR=~/jdk1.8.0_91
X_APACHE_ANT_DIR=~/apache-ant-1.9.7

unset   JAVA_HOME
export  LANG=C
export  ALT_BOOTDIR=$X_ORACLE_JDK_DIR
export  ALT_JDK_IMPORT_PATH=$X_ORACLE_JDK_DIR
export  ANT_HOME=$X_APACHE_ANT_DIR

cd  $X_ROOT_DIR/hotspot/make

#   64bit server
make    DEBUG_BINARIES=true ARCH_DATA_MODEL=64 jvmg

#   32bit client
yum install -y  glibc-devel.i686    libstdc++.i686  libstdc++-static.i686
make    DEBUG_BINARIES=true jvmg1
