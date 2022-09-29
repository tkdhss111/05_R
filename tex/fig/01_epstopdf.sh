#!/bin/bash
for file in *ps
do
  echo ${file}
  epstopdf ${file}
done

sleep 10