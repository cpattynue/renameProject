#!/bin/sh

###--------------------------------------------------------------------
### Copyright: (c) 2011-2012 MoreloSoft - Hova Networks S.A.P.I de C.V.
### All rights reserved.
###
### Created by : Celma Patricia Núñez Espada <cpattynue@gmail.com>
###--------------------------------------------------------------------

# $1 is directory where files replace
# $2 is the type, d = directory, f = files
# $3 is string to replace
# $4 is string will replace

file=`find $1/* -type $2  -name "*$3*"`
for i  in $file 
do  
    directorio=$(echo $i | sed 's/$3/$4/g')  
    mv $i $directorio
    echo "dir $directorio" 
done
