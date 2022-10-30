#!/bin/sh
. ~/.nvm/nvm.sh
#Author: Rotari Corneliu

echo "------------------------------[Updating the system]------------------------------"
sudo apt-get update && sudo apt-get upgrade

echo "\n---------------------[Installing the LTS verison of Node]---------------------"
nvm install node
nvm use node

echo "\n---------------------[Installing Node Packages]---------------------"
echo "\n --(Angular)--"
npm i -g @angular/cli
echo "\n --(NestJS)--"
npm i -g @nestjs/cli
echo "\n --(TypeScript)--"
npm i -g typescript
