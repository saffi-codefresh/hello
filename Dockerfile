FROM alpine
WORKDIR /app
RUN apk update &&   apk add curl && apk add npm && apk add yarn
COPY package.json /app/package.json
COPY index.js /app/index.js
EXPOSE 3001
#HEALTHCHECK CMD curl --fail http://localhost:3001/ || exit 1
RUN ls -ltr
RUN yarn install
RUN ls -ltr
CMD ["yarn", "start"]
