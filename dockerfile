# Layer1: Use Node.js base image
# Use the official Node image for a stable environment
FROM node:18-alpine

# Layer2: Set working directory
WORKDIR /app

# Layer3: Copy Node.js dependency file (package.json)
# This lists your app's dependencies
COPY package.json .

# Layer4: Install dependencies
# 'npm install' is the correct Node.js dependency command
RUN npm install

# Copy all application files to the container
COPY . .

# Define the environment variable: Expose port
# Expose the port where your Node.js app is listening
EXPOSE 5000

# Command to run app
# Executes the start script defined in your package.json
CMD ["npm", "start"]