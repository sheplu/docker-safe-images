FROM amazon/dynamodb-local:latest

USER root

RUN yum update -y

USER dynamodblocal
