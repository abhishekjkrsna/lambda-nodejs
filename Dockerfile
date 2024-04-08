FROM public.ecr.aws/lambda/nodejs:latest
COPY app.js ${LAMBDA_TASK_ROOT}
CMD [ "app.handler" ]