#!/bin/bash

cd

source $HOME/.bashrc

go version
if [ $? -eq 0  ]; then
     exit 0
 fi

 mkdir golang
 mkdir golang/src
 mkdir golang/pkg
 mkdir golang/bin

 wget https://storage.googleapis.com/golang/go1.6.2.linux-amd64.tar.gz

 sudo tar -C /usr/local -xzf go1.6.2.linux-amd64.tar.gz

 echo >> $HOME/.bashrc
 echo >> $HOME/.bashrc
 echo "# Added by Tran Duy Thanh to setup go" >> $HOME/.bashrc
 echo "export GOPATH=\$HOME/golang" >> $HOME/.bashrc
 echo "export PATH=\$PATH:/usr/local/go/bin:\$GOPATH/bin" >> $HOME/.bashrc

 source $HOME/.bashrc

 rm -f go1.6.2.linux-amd64.tar.gz

 go version
 go env
