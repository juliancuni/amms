# amms

AutoMotive Magagment solution Flutter project.

## Linux Desktop version only.

Tested only on ubuntu
tar -cvf ./cap-deploy.tar --exclude='*.map' ./captain-definition ./Dockerfile  ./build/web/*
caprover deploy -t cap-deploy.tar 