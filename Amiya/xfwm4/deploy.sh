#!/usr/bin/env bash
shopt -s extglob

for filename in $(ls !(title).xpm) 
do
  ln -s $(pwd)/$filename $(pwd)/${filename%.*}-active.xpm
  ln -s $(pwd)/$filename $(pwd)/${filename%.*}-inactive.xpm
  ln -s $(pwd)/$filename $(pwd)/${filename%.*}-prelight.xpm
  ln -s $(pwd)/prelight.png $(pwd)/${filename%.*}-prelight.png
done

for suffix in {1..5}
do
  ln -s $(pwd)/title.xpm $(pwd)/title-$suffix-active.xpm
  ln -s $(pwd)/title.xpm $(pwd)/title-$suffix-inactive.xpm
done

# for prefix in top-left top-right
# do
#   ln -s $(pwd)/title.xpm $(pwd)/$prefix-active.xpm
#   ln -s $(pwd)/title.xpm $(pwd)/$prefix-inactive.xpm
# done
  
