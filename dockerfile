# Use official Node image
FROM node:20

# Create app directory
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of app
COPY . .

# Expose port
EXPOSE 5000

# Command to run app
CMD ["node", "app.js"]
