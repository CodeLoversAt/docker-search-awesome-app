#!/bin/bash

UGLIFYCSS=$(which uglifycss)
UGLIFYJS=$(which uglifyjs)
NODE_PATH=$(which node)
COFFEE_PATH=$(which coffee)
SASS_PATH=$(which sass)

echo $UGLIFYCSS
echo $UGLIFYJS
echo $NODE_PATH
echo $COFFEE_PATH
echo $SASS_PATH

sed -i "s@uglify_css: uglifycss@uglify_css: ${UGLIFYCSS}@" /tmp/search-awesome/app/config/parameters.yml
sed -i "s@uglify_js: uglifyjs@uglify_js: ${UGLIFYJS}@" /tmp/search-awesome/app/config/parameters.yml
sed -i "s@node_path: node@node_path: ${NODE_PATH}@" /tmp/search-awesome/app/config/parameters.yml
sed -i "s@coffee_path: /usr/local/bin/coffee@coffee_path: ${COFFEE_PATH}@" /tmp/search-awesome/app/config/parameters.yml
sed -i "s@sass_path: /usr/bin/sass@sass_path: ${SASS_PATH}@" /tmp/search-awesome/app/config/parameters.yml
