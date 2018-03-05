FROM node:alpine

LABEL maintainer="Matías Aguirre <matiasaguirre@gmail.com>"

RUN yarn global add less less-watch-compiler

# Define a less-watch-compiler.config.json file with the options to
# run this command

ENTRYPOINT "less-watch-compiler"
