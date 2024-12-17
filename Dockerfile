# Build stage
FROM node:20-alpine AS development
WORKDIR /app
COPY . .
	
RUN npm install 16

EXPOSE 3000
CMD ["npm", "run", "dev"]