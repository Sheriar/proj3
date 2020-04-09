FROM java:latest
ADD . /angular-cli
ADD . /spring-petclinic-angular
COPY /requirements.sh .
EXPOSE 4200 
ENTRYPOINT ["/requirements.sh"]


