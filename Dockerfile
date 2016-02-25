FROM ubuntu
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install npm -y
RUN apt-get install build-essential
RUN apt-get install libpq-dev -y
RUN apt-get install git -y
RUN apt-get install curl -y

RUN curl -sL https://deb.nodesource.com/setup_4.x
RUN sudo apt-get install nodejs -y

#RUN apt-get install curl -y
#RUN curl -sL https://deb.nodesource.com/setup_4.x
#RUN apt-get install -y nodejs
RUN apt-get install git apache2 -y #gitweb -y
RUN ln -s /usr/bin/nodejs /usr/local/bin/node
COPY apache2.conf /etc/apache2/

RUN mkdir -p /opt/git/repositories
RUN cd /opt/git/repositories
WORKDIR /opt/git/repositories
RUN git clone --bare https://github.com/peterjausovec/nodeplayground nodeplayground.git
RUN git clone nodeplayground.git nodeplayground
WORKDIR /
RUN chown -R www-data:www-data /opt/git/repositories

EXPOSE 80
RUN echo current folder $PWD
RUN ls
WORKDIR /opt/git/repositories/nodeplayground
RUN npm install
CMD npm start

#RUN service apache2 restart


# ENTRYPOINT ["/bin/bash"]



