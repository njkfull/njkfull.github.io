for d in collections/*/ ; do
    [ -L "${d%/}" ] && continue
	echo "./${d}index.htm";
    cp -f ./index.htm "./${d}index.htm";
done
cp -f ./index.htm "./collections/index.htm";
