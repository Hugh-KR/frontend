# Build stage
FROM node:20-alpine AS development
WORKDIR /app
COPY package*.json ./
RUN apk add --no-cache bash curl && \
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash && \
    . ~/.nvm/nvm.sh && \
    nvm install 16 && \
    nvm use 16
	
RUN npm install --legacy-peer-deps
COPY . .
EXPOSE 3000
CMD ["npm", "run", "dev"]