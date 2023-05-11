FROM node:18-alpine
ENV NODE_ENV=production

WORKDIR /client

COPY ["package.json", "package-lock.json", "./"]

RUN npm install --production

COPY . .

EXPOSE 80

CMD ["npm", "start"]