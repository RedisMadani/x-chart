#!/usr/bin/env sh

set -e

rm -rf vuepress

npm run docs:build

gulp doc

cp -r ./screenshot ./vuepress/api/

npm run build

cp ./dist/clchart.js ./samples/clchart.js
cp ./dist/clchart.js.map ./samples/clchart.js.map

cp -r ./samples ./vuepress

cd ./vuepress

# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

https://seerline.github.io/clchart
git push -f git@github.com:seerline/clchart.git master:gh-pages

cd -

rm -rf ./samples/clchart.js ./samples/clchart.js.map
