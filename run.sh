#########################################################################
# File Name: run.sh
# Author: tiankonguse(skyyuan)
# mail: i@tiankonguse.com
# Created Time: 2015年04月14日 20:48:48
#########################################################################
#!/bin/bash

PWD=`pwd`
DIR=`basename $PWD`



if [[ $DIR == "bulid" ]] || [[ $DIR == "build" ]]; then
	cp -f ./run.sh ../run.sh;
	rm -rf *;
	cp -f ../run.sh ./run.sh;
    rm -f ../run.sh;
	cmake ../;
	make;
	make install;
	cp -f ./run.sh ../run.sh;
	rm -rf *;
	cp -f ../run.sh ./run.sh;
    rm -f ../run.sh;
else
	echo "you should in bulid/ directory, but now you in $DIR";
fi
