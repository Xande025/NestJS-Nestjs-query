FROM node:18-alpine AS development

WORKDIR /app

COPY package*.json ./
COPY yarn.lock ./

RUN yarn install

COPY . .

CMD ["yarn", "start:dev"]CMD ["yarn", "exec", "nest", "start", "--watch"]