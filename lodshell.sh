#!/bin/bash
cd /data/www/blaha/rzzw/todo/
for i in *; do
	if [[ -f $i ]]; then
		last=$(tail -n 1 $i)
		if [[ "$last" =~ "req" ]]; then
			sed -i -e 's/\r//g' $i 
			date=$(date +'%Y-%m-%d %H:%M:%S')
			echo "$date|lodsight activated" >> $i 
			endpoint=$(less $i | sed -rn 's/(.*\|endpoint - )(.*)/\2/p')
			dataset=$(less $i | sed -rn 's/(.*\|dataset - )(.*)/\2/p')
			out=$(less $i | sed -rn 's/(.*\|out log - )(.*)/\2/p')
			err=$(less $i | sed -rn 's/(.*\|err log - )(.*)/\2/p')
			if [[ -n $dataset ]]; then
				attr="$endpoint 0 $dataset"
			else
				attr="$endpoint"
			fi	
    		nohup java -jar /data/www/blaha/rzzw/lodsum/LODSight.jar /data/www/blaha/rzzw/lodsum/config.properties $attr 1>>$out 2>>$err &
		fi
	fi
done
