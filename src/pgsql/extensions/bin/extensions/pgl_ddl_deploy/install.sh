#!/usr/bin/env bash
apt-get install -y make gcc
wget --no-check-certificate --content-disposition https://github.com/enova/pgl_ddl_deploy/tarball/REL1_2_STABLE -O pgl_ddl_deploy.tar.gz
tar -zxvf pgl_ddl_deploy.tar.gz
cd enova-pgl_ddl_deploy*
make && make install

#cleanup
rm -rf enova-pgl_ddl_deploy* && rm -rf pgl_ddl_deploy.tar.gz
apt-get remove --auto-remove -y make gcc