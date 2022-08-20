FROM node:18-alpine

WORKDIR /web

COPY package*.json .
RUN npm install
COPY . .

EXPOSE 6006

CMD ["npm", "run", "storybook"]
