FROM chuckwired/port-tutorial

# set the working directory 
RUN mkdir /app
WORKDIR /app

# Add path to Env variables
ENV PATH /app/node_modules/.bin:$PATH

COPY package.json /app/
# Copy all your app's source code inside the Docker image
COPY . /app/
COPY . .

# This is update the systen and install express
RUN sudo apt-get update \
    # Install NPM express
    && npm install -g express

EXPOSE 8080
CMD ["npm", "app.js"]
