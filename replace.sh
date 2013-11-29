#!/bin/sh
###--------------------------------------------------------------------
### Copyright: (c) 2011-2012 MoreloSoft - Hova Networks S.A.P.I de C.V.
### All rights reserved.
###
### Created by : Celma Patricia Núñez Espada <cpattynue@gmail.com>
###--------------------------------------------------------------------


#$1 is directory where files to replace
#$2 is string to replace
#$3 is string will replace

files=`grep -l -R "$2" $1`

for i in $files; do perl -pi -w  -e "s/$2/$3/ig" $i; done;
