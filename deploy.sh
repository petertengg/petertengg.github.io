#!/bin/bash

# Set Jekyll to production environment
JEKYLL_ENV=production bundle exec jekyll build

# Continue deployment steps
rm -rf ../_deploy/*
cp -r _site/* ../_deploy/
cd ../_deploy
git add .
git commit -m "Publish site"
git push origin gh-pages
cd -
