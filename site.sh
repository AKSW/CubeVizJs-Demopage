#!/bin/bash

#
# Clone Demopage and copy to Nginx html root
#

echo "cleanup..."
rm -rf ./CubeVizJs-Demopage

git clone https://github.com/AKSW/CubeVizJs-Demopage.git


echo "copy to nginx html root..."
cp -r ./CubeVizJs-Demopage/demo/* /usr/share/nginx/html/  

echo "Done!"

nginx -g 'daemon off;'