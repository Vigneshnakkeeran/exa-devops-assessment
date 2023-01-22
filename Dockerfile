# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the application files
COPY . .

# Expose the port that the application will run on
EXPOSE 3000

# Set the entrypoint command
ENTRYPOINT ["/bin/bash", "-c"]

# Start the application
CMD ["node index.js & sleep infinity"]
