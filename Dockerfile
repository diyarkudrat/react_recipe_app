# Node base image
FROM node:alpine

# Create empty directory
WORKDIR '/app'

# add package.json to empty directory created above
COPY package.json .

# Install dependencies using npm
RUN npm install

# Copy source code in directory
COPY . .

# Command to run server
CMD ["npm", "start"]