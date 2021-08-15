#!/bin/bash

# double check everything is installed
bundle install

# build the html content
bundle exec jekyll build
