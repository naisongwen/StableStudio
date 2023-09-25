FROM node:lts-alpine3.18

RUN apk add git
RUN apk add --no-cache build-base yarn

# Set the working directory in the container
WORKDIR /app

# copy everything except stuff in .dockerignore
COPY . .

# Install dependencies
#ENV YARN_ENABLE_INLINE_BUILDS=true
RUN yarn

EXPOSE 3000

# Build the project
# RUN yarn build

# Start the server
CMD ["yarn", "dev", "--host", "0.0.0.0"]
