FROM mhart/alpine-node:7

COPY cluster-health-monitor/package.json /package.json
COPY cluster-health-monitor/server.js /server.js
COPY cluster-health-monitor/cluster_nodes.js /cluster_nodes.js
RUN npm install

EXPOSE 5000

CMD ["node", "/server.js"] 