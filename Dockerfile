# Create a docker image to build a react image
# Use the node image as the base image
FROM node:22-alpine3.19

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the source code to the working directory
COPY . .

# Build the react app
RUN npm run build

# Expose the port
EXPOSE 3000

# Run the app
CMD ["npm", "start"]