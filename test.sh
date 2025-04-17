>files.html;
IFS=$'\n'
for p in $(du -a collections | grep .html)
do
	echo ${p#*	} >> files.html;
done
