# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in package.json
RUN npm install

# Expose port 5001 for the frontend
EXPOSE 5001

# Run the frontend server
CMD ["npm", "run", "dev"]