FROM node
COPY . /
EXPOSE 1337
RUN npm install
RUN npm start
