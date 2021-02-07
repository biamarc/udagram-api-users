# Use NodeJS base image
FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies by copying
# package.json and package-lock.json
COPY package*.json ./
COPY www/ ./

# Install dependencies
RUN npm install

# Bind the port that the image will run on
EXPOSE 8080

# Environment variables
ENV POSTGRES_USERNAME='' POSTGRES_PASSWORD='' POSTGRES_HOST='' POSTGRES_DB=''
ENV AWS_BUCKET='' AWS_REGION='' AWS_PROFILE='' 
ENV JWT_SECRET='' ORIGIN_ALLOW='' SERVER_PORT=''

# Define the Docker image's behavior at runtime
CMD ["node", "server.js"]
