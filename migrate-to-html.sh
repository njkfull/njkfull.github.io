du -a collections | grep .mp3 | while IFS="" read -r p || [ -n "$p" ] 
do
	#echo ${p#*	}
	f_mp3=${p#*	};
	f_html=${f_mp3/%.mp3/.html};
	echo "renaming html ${f_mp3} ..."
	mv "./${f_mp3}" "./${f_html}";
done
