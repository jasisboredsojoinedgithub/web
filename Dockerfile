# Use an official Node.js runtime as the base image
FROM node:14
WORKDIR /app
# Copy your project files
COPY . .
# Give root permission to install
RUN npm config set unsafe-perm true
# Install dependencies
RUN npm install -g hexo-cli
RUN npm install 
CMD ["hexo", "server"]