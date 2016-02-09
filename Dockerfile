FROM node
RUN mkdir /src
COPY . /src
WORKDIR /src
EXPOSE 1337
RUN npm install
CMD ["node", "./bin/www"]
