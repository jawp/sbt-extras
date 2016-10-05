for symlink in $(git ls-files -s | egrep "^120000" | cut -f2); do
    src=$(cat $symlink)
    dst=$symlink
    rm $dst
    ln -s $src $dst
    echo "$src <<===>> $dst"
done
