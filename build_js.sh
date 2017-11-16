#!/bin/bash
# concatenate and compress all js files
# requires nodejs and minifyjs package
# Only files listed below are required by the app

# exit on error
set -e 

echo "Concatenating js files and libraries..."

cat js/countdown.min.js \
    js/flexnav.min.js \
    js/mail.js \
    js/social.js \
    js/custom.js \
    > js/production.js

minifyjs -m -i js/production.js -o js/production.min.js

echo "Job complete."
