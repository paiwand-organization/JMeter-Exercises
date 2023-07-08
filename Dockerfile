# Dockerfile
FROM node:14

# Set the working directory
WORKDIR /app


# Copy package.json and package-lock.json
COPY package*.json ./

RUN npm init -y 




# Install dependencies
RUN npm install

# Install dependencies
RUN npm update

ENV PATH /app/node_modules/.bin:$PATH

# Copy the entire project
COPY . ./


# Start the server
CMD ["npm","start"]