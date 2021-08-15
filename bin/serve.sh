#!/bin/bash

# double check everything is installed
bundle install

# open browser
python3 -mwebbrowser http://127.0.0.1:4000/

# serve the html content
bundle exec jekyll serve
