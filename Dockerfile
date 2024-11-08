# Use official Node.js runtime as a parent image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container
COPY . .

# Install dependencies
RUN npm install

# Make the app available on port 8080
EXPOSE 8080

# Run the app when the container starts
CMD ["npm", "start"]
