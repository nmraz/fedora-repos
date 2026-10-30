#!/bin/bash

cd mirror
wget -r -nH -H -R '**/index.html*' -R robots.txt -R 'icons/**' -R openh264.1 -N https://codecs.fedoraproject.org/openh264
