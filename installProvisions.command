#!/bin/bash

cd $( dirname "${BASH_SOURCE[0]}" )

for x in *.mobileprovision; do 
	echo $x;
	./installMobileProvisionFile.sh $x;
done