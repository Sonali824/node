# Use the official Node.js image
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source code
COPY . .

# Expose the port
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]