#!  /bin/env bash

yum install -y  zip unzip
yum install -y  gcc gcc-c++ libstdc++-static
yum install -y  glibc-devel.i686    libstdc++.i686  libstdc++-static.i686

X_ROOT_DIR=~/openjdk
X_ORACLE_JDK_DIR=~/jdk1.8.0_91
X_APACHE_ANT_DIR=~/apache-ant-1.9.7

############# O1: build hotspot ##############
unset   JAVA_HOME
export  LANG=C
export  ALT_BOOTDIR=$X_ORACLE_JDK_DIR
export  ALT_JDK_IMPORT_PATH=$X_ORACLE_JDK_DIR
export  ANT_HOME=$X_APACHE_ANT_DIR

cd  $X_ROOT_DIR/hotspot/make

#   64bit server
make    DEBUG_BINARIES=true ARCH_DATA_MODEL=64 jvmg

#   32bit client
make    DEBUG_BINARIES=true jvmg1

############# O2: build all ##############
unset   JAVA_HOME
export  LANG=C
export  PATH=$X_ORACLE_JDK_DIR/bin:$PATH

yum install -y  libXtst-devel libXt-devel libXrender-devel
yum install -y  cups-devel
yum install -y  freetype-devel
yum install -y  alsa-lib-devel

cd  $X_ROOT_DIR
bash    ./configure
make    all
