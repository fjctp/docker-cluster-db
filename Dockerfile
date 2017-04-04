FROM mhart/alpine-node:7

RUN apk add --no-cache git && \
    git clone https://github.com/fjctp/cluster-db.git && \
    cd cluster-db && \
    npm install

EXPOSE 5000
WORKDIR /cluster-db

CMD ["node", "server.js"] 
