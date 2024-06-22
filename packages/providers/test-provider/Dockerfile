FROM node:20-alpine
RUN apk add --update apk-cron && rm -rf /var/cache/apk/*
WORKDIR /usr/src/app
COPY package*.json .
RUN npm install
COPY . .

COPY scripts/crontab /etc/cron.d/start-provider
RUN chmod 0644 /etc/cron.d/start-provider
RUN crontab /etc/cron.d/start-provider
RUN touch /var/log/cron.log

COPY scripts/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]

