# Our node app is based on `18-alpine` image 
FROM node:18-alpine

# Setting up the environment variables needed:
ENV DOMAIN="http://SERVER_IP_ADDRESS:3000" \
PORT=3000 \
STATIC_DIR="./client" \
PUBLISHABLE_KEY="TEST_STRIPE_PUBLIC_API_KEY"
SECRET_KEY="TEST_STRIPE_SECRET_API_KEY"

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
