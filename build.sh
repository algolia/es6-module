#!/usr/bin/env bash

set -ev

rm -rf dist/
rm -rf dist-module/
mkdir dist/
mkdir dist-module/

babel index.js \
  --out-file dist-module/index.js -q
babel src \
  --out-dir dist-module/src -q

webpack \
  --config webpack.config.dist.babel.js

uglifyjs dist/es6-module.js \
  --in-source-map dist/es6-module.js.map \
  --source-map dist/es6-module.min.js.map \
  -c warnings=false -m -o dist/es6-module.min.js
