FROM node:alpine AS development
ENV NODE_ENV development
WORKDIR /apps
COPY ./package.json /app
RUN npm install
COPY . .
CMD npm start
