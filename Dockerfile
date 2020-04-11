FROM node:10 AS ui-build
WORKDIR /usr/src/app
COPY my-dream-app/ ./my-dream-app/
RUN cd my-dream-app && npm install @angular/cli && npm install && npm run build

FROM node:10 AS server-build
WORKDIR /root/
COPY --from=ui-build /usr/src/app/my-dream-app/dist ./my-dream-app/dist
COPY package*.json ./
RUN npm install
COPY index.js .

EXPOSE 4000

ENTRYPOINT ["node", "./index.js"]





# Start from the base image
#FROM node:10

# set the work directory
#WORKDIR /usr/src/app

# Copy the file package.json from your host to your current location
#COPY package*.json ./
# copy my-dream-app folder
#COPY my-dream-app/package*.json ./my-dream-app/

# RUN npm install command for node js dependencies inside your image filesystem
#RUN npm install \
#   && cd my-dream-app \
#   && npm install @angular/cli \
 #  && npm install

# Bundle app source
#COPY . .
# builing Angular UI
#RUN cd my-dream-app && npm run build
# Inform Docker that the container is listening on the specified port at runtime.
#EXPOSE 4000
# Run the specified command within the container.
#ENTRYPOINT ["node", "./index.js"]









# Use the official image as a parent image
#FROM alpine

#LABEL maintainer="hussam@hussam.se"

# Install Node and NPM
#RUN apk add --update nodejs nodejs-npm

# Copy the file from your host to your current location
#COPY . /src

# Set the working directory
#WORKDIR /src

# Run the command inside your image filesystem
#RUN npm install

# Inform Docker that the container is listening on the specified port at runtime.
#EXPOSE 4000

# Run the specified command within the container.
#CMD [ "node", "./index.js" ]
#ENTRYPOINT ["node", "./index.js"]









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