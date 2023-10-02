# Use an official Node.js runtime as the base image
FROM node:alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of your Nest.js application code to the container
COPY . .

# Expose the port that your Nest.js application will run on (adjust as needed)
EXPOSE 3000

# Define the command to start your Nest.js application
CMD [ "npm", "start" ]