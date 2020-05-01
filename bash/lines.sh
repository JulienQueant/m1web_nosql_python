for f in ./* ; do
    if [[ -f $f && -s $f ]]; then
        echo $(basename $f)
        echo Number of lines: $(wc -l < $f)
        echo Number of words: $(wc -w < $f)
    fi
done