#!/bin/sh

# Make sure we have all dependencies
bundle install

# Run Jekyll locally
bundle exec jekyll serve --livereload