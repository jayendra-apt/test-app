# Step 1: Use a Node.js base image
FROM node:16

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json to the container
COPY package*.json ./

# Step 4: Install dependencies inside the container
RUN npm install

# Step 5: Copy the rest of the app code into the container
COPY . .

# Step 6: Expose the port that the Express app will run on (assuming 3000 is the port)
EXPOSE 3000

# Step 7: Set the command to start the server
CMD ["node", "server.js"]
