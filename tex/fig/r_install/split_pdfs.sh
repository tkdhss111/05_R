#!/bin/bash

rm -r pages

mkdir pages

for file in *.pdf
do
  echo ${file%.pdf}
  BN=${file%.pdf}
  echo ${BN} ${file%.pdf}

  pdftk ${BN}.pdf burst output ./pages/${BN}_%d.pdf
 
done

rm doc_data.txt

sleep 10
