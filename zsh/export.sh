#!/bin/sh

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin
export PATH=$PATH:/usr/local/opt/mysql-client/bin
export PATH=~/gopath/bin:$PATH
export PATH=~/local/bin:$PATH
export PATH=$PATH:~/local/program/node/bin
export PATH=$PATH:~/.superdns/bin

export GOPATH=~/gopath

#export ETCDCTL_API=2
export IntegrationTest=true
