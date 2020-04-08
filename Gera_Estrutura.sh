#!/bin/bash 
entrada=("$@")
nome=${entrada[0]}
dir=$(pwd)
mkdir $dir/$nome
cd $dir/$nome
mkdir caseA\-pre\-process control\-files kafka\-tutorial netezza\-extraction ntz\_tdt\_to\_hive setup\-env spark\-netezza target use\-case\-a
zip ntz\_tdt\_to\_hive ntz\_tdt\_to\_hive

cd $dir/caseA\-pre\-process 
touch backup\_submit.sh
touch build.sbt
touch submit.sh
chmod 774 backup\_submit.sh
chmod +x backup\_submit.sh
chmod 774 submit.sh
chmod +x submit.sh
mkdir project spark\-warehouse src target
