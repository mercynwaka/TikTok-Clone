#getting base image nodejs


FROM node:lts-bookworm-slim

WORKDIR /app

COPY . .

RUN npm install -g npm@10.8.2

RUN npm run build

EXPOSE 3000

CMD ["npm","run","start"] 
