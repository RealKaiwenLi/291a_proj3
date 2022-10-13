FROM node:15.13-alpine
WORKDIR /frontend
ENV PATH /frontend/node_modules/.bin:$PATH
COPY . .
RUN npm run build
CMD ["npm", "start"]