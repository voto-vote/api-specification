FROM timbru31/java-node

WORKDIR /app/

RUN npm install speccy -g
RUN npm install @openapitools/openapi-generator-cli -g

COPY docker-entrypoint.sh /app/

ENTRYPOINT [ "/app/docker-entrypoint.sh" ]