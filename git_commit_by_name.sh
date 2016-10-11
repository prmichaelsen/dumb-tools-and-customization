#!/bin/bash
echo "Commands to run"
echo "***************"

branch=$(($#-1))
message=$(($#))
for i in $(seq 1 $(($#-2))) ; do
	d="./${!i}"
	echo
	echo "$d"
	echo git -C "$d" add .
	echo git -C "$d" commit -m "\"${!branch} ${!message}\""
	echo git -C "$d" push origin ${!branch} 
done

read -r -p "Are you sure you wish to run the above commands? [y/N] " response
case $response in
	[yY][eE][sS]|[yY]) 
		for i in $(seq 1 $(($#-2))) ; do
			echo
			d="./${!i}"
			echo "$d"
			git -C "$d" add .
			git -C "$d" commit -m "${!branch} ${!message}"
			git -C "$d" push origin ${!branch} 
		done
		;;
	*)
		;;
esac
