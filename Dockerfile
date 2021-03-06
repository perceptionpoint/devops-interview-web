FROM node:13-alpine
ENV NODE_ENV "production"
ENV PORT 80
EXPOSE 80

RUN mkdir -p /usr/src/app

# Prepare app directory
WORKDIR /usr/src/app
COPY package.json /usr/src/app/

RUN yarn install

COPY . /usr/src/app

# Start the app
CMD ["/usr/local/bin/npm", "start"]
