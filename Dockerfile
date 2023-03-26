#base image customly created with aws cli
FROM ashiqummathoor/tomcatcli
#please make ensure security
#downloading artifact from s3 bucket to create docker image
RUN aws s3 cp s3://your-bucket.drone/webapp.war /usr/local/tomcat/webapps

#expose port number
EXPOSE 8080
#test
