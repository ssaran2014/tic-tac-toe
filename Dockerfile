# syntax=docker/dockerfile:1
   
FROM node:18-alpine
WORKDIR /tick-tac-toe
COPY . .
COPY --from=public.ecr.aws/awsguru/aws-lambda-adapter:0.7.0 /lambda-adapter /opt/extensions/lambda-adapter
RUN npm install
CMD ["npm", "run", "dev"]
EXPOSE 3000