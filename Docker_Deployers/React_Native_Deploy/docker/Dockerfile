FROM node:18

WORKDIR /app

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 19000 19001 19002

ENTRYPOINT ["/entrypoint.sh"]
