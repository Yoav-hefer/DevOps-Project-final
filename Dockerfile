FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# מעדכנים לפורט 8080 כפי שמופיע בתיעוד
EXPOSE 8080

CMD ["node", "server.js"]