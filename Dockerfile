FROM node
RUN mkdir /src
COPY . /src
WORKDIR /src
EXPOSE 1337
RUN npm install
RUN ls
#CMD ["node", "./bin/www"]
