#!/bin/sh
cd dss-redis4usr
./start.sh
cd -;
cd pms-redis4usr
./start.sh
cd -;
cd css-redis4usr
./start.sh
cd -;
cd tps-redis4usr
./start.sh
cd -;
cd p2p-redis4usr
./start.sh
cd -;
cd dss-redis4auth
./start.sh
cd -;
cd pms-redis4auth
./start.sh
cd -;
cd css-redis4auth
./start.sh
cd -;
cd tps-redis4auth
./start.sh
cd -;
cd p2p-redis4auth
./start.sh
cd -;
cd dss-redis4status
./start.sh
cd -;
cd tps-redis4status
./start.sh
cd -;
cd p2p-redis4status
./start.sh
cd -;
cd alc-redis4status
./start.sh
cd -;
cd pms-redis4work
./start.sh
cd -;
cd dss-pic-redis4namemap
./start.sh
cd -;
cd pms-pic-redis4namemap
./start.sh
cd -;
