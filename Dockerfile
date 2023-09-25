# Use the official Node.js Alpine image as the base
FROM node:alpine

RUN apk add git

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock to the container
COPY package.json yarn.lock ./

COPY . .

# Install dependencies
RUN yarn

# Build the project
# RUN yarn build

# Expose the desired port (e.g., 3000)
EXPOSE 3000

# Start the server
CMD ["yarn", "dev", "--host", "0.0.0.0"]
