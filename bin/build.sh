#!/bin/bash

# double check everything is installed
bundle install

# build the html content
bundle exec jekyll build

pushd ./_site
# build notes PDFs
for n in ./notes/*.html; do
    pandoc \
        --css=style/main.css \
        --css=style/code.css \
        --pdf-engine=wkhtmltopdf \
        --pdf-engine-opt=--enable-local-file-access \
        "${n}" \
        -o "${n%.html}.pdf"
done

# build tutorial PDFs
for n in ./tutorials/*.html; do
    pandoc \
        --css=style/main.css \
        --css=style/code.css \
        --pdf-engine=wkhtmltopdf \
        --pdf-engine-opt=--enable-local-file-access \
        "${n}" \
        -o "${n%.html}.pdf"
done

popd
