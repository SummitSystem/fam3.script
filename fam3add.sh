#!/bin/sh

tmpfile=/tmp/fam3tmp-$$.csv

user=${FAM3USER:-anonymous}
pass=${FAM3PASS:-fam3@}

fam3=$1
dev=$2
val=$3

url='ftp://'$fam3'/\VIRTUAL\CMD\D2FCSV_'$dev'_2_1_0_0_0_1_1_0'
curval=`curl -u $user:$pass --silent $url`
if [ -z "$curval" ] ;
then
  exit
fi
newval=`expr $curval + $val`

url='ftp://'$fam3'/\VIRTUAL\CMD\F2DCSV_'$dev'_-1_0_2_1_0_1_1'

echo $newval > $tmpfile

curl -u $user:$pass -T $tmpfile --silent $url

rm $tmpfile
