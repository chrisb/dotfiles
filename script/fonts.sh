#!/bin/bash

echo "[fonts] Fetching"
op document get 'Operator Font' --output ./tmp/operator.zip

echo "[fonts] Extracting"
unzip tmp/operator.zip -d tmp/fonts -x \*__MACOSX/\*

echo "[fonts] Copying"
cp tmp/fonts/*.otf ~/Library/Fonts

echo "[fonts] Cleaning up"
rm tmp/operator.zip
rm -rf tmp/fonts

echo "[fonts] Done"
