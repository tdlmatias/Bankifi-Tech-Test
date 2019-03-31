FROM chuckwired/port-tutorial

RUN mkdir
WORKDIR $WORKINGPATH /home/hello-world/ && cd /$WORKINGPATH
COPY app.py 

# This is update the systen and install express
RUN sudo apt-get update \
    # Install NPM express
    && npm install express --save

EXPOSE 8080
CMD ["npm", "start"]
