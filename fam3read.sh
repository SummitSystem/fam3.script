#!/bin/sh

user=${FAM3USER:-anonymous}
pass=${FAM3PASS:-fam3@}

fam3=$1
dev=$2
num=${3:-1}

url='ftp://'$fam3'/\VIRTUAL\CMD\D2FCSV_'$dev'_2_'$num'_0_0_0_1_1_0'

curl -u $user:$pass --silent $url
echo
