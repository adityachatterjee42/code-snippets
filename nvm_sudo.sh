#!/bin/sh
#when using nvm, the 'node' command points to a different location depending on the active version, which makes 'sudo node' fail. this script copies the active version of node into /usr/local

n=$(which node); 
n=${n%/bin/node}; 
chmod -R 755 $n/bin/*; 
sudo cp -r $n/{bin,lib,share} /usr/local
