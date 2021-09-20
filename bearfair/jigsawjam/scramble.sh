#!/bin/bash
for img in *.png
do
	convert $img -rotate `shuf -i 0-3 -n 1 | awk '{$0 *= 90}1'` $img
done
