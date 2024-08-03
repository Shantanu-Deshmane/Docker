# base directory
FROM node:latest

# Copy node files inside docker on given path
# COPY index.js /home/app/index.js
# COPY package.json /home/app/package.json
# instead of repeating COPY line again and again there is shortcut


# this will COPY all files. We can create "".dockerignore" file to add files which we doesnt want to copy to docker
COPY . /home/app

WORKDIR /home/app/

RUN npm install

# expose the port 
EXPOSE 9000

# command to run
CMD [ "node", "index" ]
