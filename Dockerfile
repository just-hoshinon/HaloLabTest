FROM node:alpine

WORKDIR /app

COPY . /app

RUN npm install
RUN npx prisma generate
RUN npm run build

CMD npx prisma migrate dev;yarn start:prod