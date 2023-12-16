#!/bin/bash

 docker build -t jkaninda/jenkins:lts -t jkaninda/jenkins:latest .
 
 docker-compose up -d

