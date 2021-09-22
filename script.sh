#!/bin/bash
npx projen new jsii --synth false
git init
git add .
git commit --allow-empty -m "chore: project created with projen"
git branch -M main
git remote add origin https://github.com/cdksecuritywing/s3newmod.git
cp -avr ../.projenrc.js .
npm i projen
npx projen
cp -avr ../index.ts ./src/
yarn build
exit




