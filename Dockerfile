FROM Ubuntu:latest

WORKDIR /usr/sti22/Documents/Demo/Docker/CloudRun

ENV PORT 8080
ENV HOST 0.0.0.0

COPY package*.json ./

RUN npm install --only=production

# Copy local code to the container
COPY . .

# Build production app
RUN npm run build

# Start the service
CMD npm start
