# Use the official image as a parent image
FROM alpine

LABEL maintainer="hussam@hussam.se"

# Install Node and NPM
RUN apk add --update nodejs nodejs-npm

# Copy the file from your host to your current location
COPY . /src

# Set the working directory
WORKDIR /src

# Run the command inside your image filesystem
RUN npm install

# Inform Docker that the container is listening on the specified port at runtime.
EXPOSE 4000

# Run the specified command within the container.
#CMD [ "node", "./index.js" ]
ENTRYPOINT ["node", "./index.js"]









# FROM alpine
# LABEL maintainer="hussam@hussam.se"
# Install Node and NPM
# RUN apk add --update nodejs nodejs-npm
# Copy app to /src
# COPY . /src
# WORKDIR /src
# Install dependencies
# RUN  npm install
# EXPOSE 8080
# ENTRYPOINT ["node", "./app.js"]