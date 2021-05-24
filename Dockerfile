FROM node:10
WORKDIR /opt/app
COPY package.json package-lock.json* ./

RUN npm install

COPY . /opt/app

ENV SECRET_WORD TwelveFactor
CMD [ "npm", "run", "start" ]
