FROM alpine-node:12.22.3

EXPOSE 3000
WORKDIR /app

COPY . /app
CMD ["node", "app.js"]

