# mainly node related config
FROM node:latest
WORKDIR /app
COPY . /app
RUN npm install
EXPOSE 8000
CMD ["npm","start"]
