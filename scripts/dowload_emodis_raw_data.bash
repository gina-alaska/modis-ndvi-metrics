#!/bin/bash
#this script uses wget to downlaod emodis data from site http://dds.cr.usgs.gov/emodis/Alaska/historical/TERRA/2013/

#example:
#wget -r -np -nH –cut-dirs=3 -R index.html http://hostname/aaa/bbb/ccc/ddd/
#Explanation:
#It will download all files and subfolders in ddd directory:
#recursively (-r),
#not going to upper directories, like ccc/… (-np),
#not saving files to hostname folder (-nH),but to ddd by omitting first 3 folders aaa, bbb, ccc (–cut-dirs=3),
#excluding index.html files (-R index.html)

if [ $# != 1 ];then

	echo "input year (YYYY) that you want to download from eMODIS http site"

	exit 1

fi


year=$1

wget -r -np -nH –cut-dirs=4 -R index.html http://dds.cr.usgs.gov/emodis/Alaska/historical/TERRA/$year/
