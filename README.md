![image](https://github.com/abhishekjkrsna/lambda-nodejs/assets/93752888/41fd4719-d573-40fb-a396-8e343aa78c94)

This is a project showing a working example of creating lambda functions through docker images.

Function url:
https://arbp3ozhbrrlsgsoyhk6vebmmu0ylssg.lambda-url.ap-south-1.on.aws/

Steps to execute this function:
1. Clone the git repository.
   ```bash
   git clone https://github.com/abhishekjkrsna/lambda-nodejs
  
3. Makes changes to the lambda handler function in app.js if you want.
4. Conatinerize the file
   ```bash
   docker build -t <image name> .
   ```
5. Run the docker image locally.
   ```bash
   docker run -p 9000:8080 <image name>
   ```
6. Test the function by running it locally.
   ```bash
   curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d ''
   ```

How to upload the image on AWS Lambda:
1. Register the image in a `AWS ECR Private Repository`, Public repositories will not work here.
2. Select your image and click create function.
3. Congratulations, you have just created your first aws lambda function through docker.
