FROM node:20-alpine

ENV N8N_HOME=/home/node/.n8n \
    N8N_PORT=5678 \
    N8N_BASIC_AUTH_ACTIVE=true \
    N8N_BASIC_AUTH_USER=adm \
    N8N_BASIC_AUTH_PASSWORD=admn8 \
    TZ=America/Mexico_City

RUN mkdir -p /home/node/.n8n /home/node/backup && chown -R node:node /home/node/.n8n /home/node/backup

RUN apk add --no-cache \
    openssl \
    curl \
    su-exec \
    bash \
    tzdata \
    && rm -rf /var/cache/apk/*

RUN cp /usr/share/zoneinfo/America/Mexico_City /etc/localtime && \
    echo "America/Mexico_City" > /etc/timezone

RUN npm install --global n8n

EXPOSE 5678

USER node
WORKDIR /home/node

ENTRYPOINT ["n8n"]
CMD ["start"]