# CSSE1001/7030 Course Notes

This repository hosts the course notes for the Introduction to Software Engineering
course at the University of Queensland.

Notes are written in Markdown and automatically deployed to [csse1001.brae.dev](https://csse1001.brae.dev) using Jekyll.

### Requirements
To be able to run the website locally, you will need the following installed:
- ruby and ruby-dev
- pandoc
- wkhtmltopdf

### Running Locally

To run the website locallly, you will need to have ruby, ruby bundle, and ruby dev installed.

Install dependancies:
```bash
bundle install
```

Serve website locally:
```bash
bundle exec jekyll serve
```

##### With docker
There are a couple of implicit dependencies of the course notes, things like python and latex.
I've built a docker container that has all required dependencies here: https://hub.docker.com/r/braewebb/jekyll

To run it with the repository mounted and port open, use the following command:
```bash
docker run --rm -it --entrypoint bash -p 4000:4000 -v $(pwd):/workdir braewebb/jekyll
```

You'll then enter a bash terminal inside the container, you can spin up a jekyll server with the following commands:
```bash
cd /workdir
bundle install
bundle exec jekyll serve --host 0.0.0.0
```
Note: must be bound to 0.0.0.0 rather than the default 127.0.0.1 or it will not be discoverable by your host PC.

### Contributing

Pull requests to fix typos or correct content are most welcome from the community (especially current students!).
