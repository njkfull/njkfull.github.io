while IFS="" read -r p || [ -n "$p" ]
do
	printf 'Downloading --- %s\n' "$p";
	yt-dlp --ignore-errors -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o 'collections/%(playlist)s/%(playlist_index)s-%(title)s.%(ext)s' "$p";
done < list.txt

sh migrate-god.sh;

>files.html;
IFS=$'\n'
for p in $(du -a collections | grep .html)
do
	echo ${p#*	} >> files.html;
done

git add .
git commit -m "add album"
git push
