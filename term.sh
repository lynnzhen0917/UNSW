#!/bin/sh

URL=https://www.handbook.unsw.edu.au/postgraduate/courses/2019/
course=`wget -q -O- https://www.handbook.unsw.edu.au/postgraduate/specialisations/2019/COMPAS |egrep "<a href=\"/postgraduate/courses/2019/"|sed -r 's?<a href="/postgraduate/courses/2019/([A-Z]{4}[0-9]{4})/?\1?'|awk '{print $1}' |sort|uniq`



for class in $course
do
	echo $class `wget -q -O- https://www.handbook.unsw.edu.au/postgraduate/courses/2019/$class|egrep "Term [0-9]"|sed -r 's/<.*>([Summer Term|Term][^<]*).*/\1/'|head -n1` >> courseAndterm.txt

done






TAGterm.sh                       term.sh                       J                             J                                 �