FROM mhart/alpine-node:latest
LABEL maintainer="terran324@gmail.com"

COPY app/index.js /app/
COPY app/*.json /app/

WORKDIR /app
RUN npm install

ENTRYPOINT ["/usr/bin/node", "/app/index.js"]
EXPOSE 3000