FROM node
RUN mkdir /src
COPY . /src
WORKDIR /src
EXPOSE 3000
RUN npm install
CMD ["node", "./bin/www"]
