FROM node:14-alpine AS back
WORKDIR /index
COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]