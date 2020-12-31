#!/bin/bash

echo '###########################################################################################'
echo '#                                                                                         #'
echo '#                                  PUBLISH AWS FUNCION (RIAN)                             #'
echo '#                                                                                         #'
echo '###########################################################################################'


HANDLER=rian.example.springcloudfunction.handler.CovidFunctionHandler
FUNCTION_NAME=covidFunction
ZIP_FILE=fileb:///Users/rian/GFT/Projetos/ARSENAL/spring-cloud-covid-function-aws/target/spring-cloud-covid-function-aws-0.0.1-SNAPSHOT-aws.jar
RUNTIME=java11
LAMBDA_ROLE_ARN=arn:aws:iam::585849681126:role/lambda-role

  
echo Creating function
  set -x
  aws lambda create-function \
    --function-name ${FUNCTION_NAME} \
    --zip-file ${ZIP_FILE} \
    --handler ${HANDLER} \
    --runtime ${RUNTIME} \
    --role ${LAMBDA_ROLE_ARN} \
    --timeout 15 \
    --memory-size 512
    
# Enable and move this param above ${LAMBDA_META}, if using AWS X-Ray
#    --tracing-config Mode=Active \
