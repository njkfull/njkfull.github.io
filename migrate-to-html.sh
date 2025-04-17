for p in $(du -a collections | grep .mp3)
do
	f_mp3=${p#*	};
	f_html=${f_mp3/%.mp3/.html};
	echo "renaming html ${f_mp3} ..."
	mv ./${f_mp3} ./${f_html};
done
