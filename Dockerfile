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

# Copy the entrypoint script
COPY entrypoint.sh /usr/local/bin/

# Make the script executable
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set the entrypoint script as the default command to run
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

# Start the application
CMD ["npm start"]
