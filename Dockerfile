##
# @author Alexandre Saison <alexandre.saison@inarix.com>
# @file Dockerfile for Commute App
# @desc Created on 2020-04-20 12:30:15 pm
# @copyright Inarix
#
FROM node:alpine
LABEL MAINTAINER Ryan Watts <rwatts@gmail.com>

# setup container for installation.
RUN mkdir /app
WORKDIR /app
ADD . /app

# run installation/ build commands.
RUN npm i -g @nteract/commuter

EXPOSE 4000

CMD npm run start