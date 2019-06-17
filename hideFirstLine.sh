#!/bin/bash
solcpath='/Users/tron/git/solidity/build/solc/solc'
for file in $1*
do
output=`${solcpath} --optimize --bin --abi ${file} --overwrite|grep error`
#output=`cat ${file}|grep 'master'`
if [ ${#output} -gt 0 ]; then
	echo $file
fi
done
