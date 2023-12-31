FROM ghcr.io/puppeteer/puppeteer:20.8.2

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/google-chrome-stable

WORKDIR /usr/src/app

copy package*.json ./
RUN npm ci
COPY . .

CMD ["node","app.js"]
