#!/bin/bash
bundle exec jekyll build
rm -rf ../_deploy/*
cp -r _site/* ../_deploy/
cd ../_deploy
git add .
git commit -m "Publish site"
git push origin gh-pages
cd -
