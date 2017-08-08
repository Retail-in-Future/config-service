FROM gradle:jdk8-alpine
MAINTAINER "dgchen"

USER root
# Prepare work directories
ENV APP_DIR  /root/project
ENV RESOURCES_DIR $APP_DIR/resources/
ENV LIB_DIR $APP_DIR/lib/


RUN mkdir -p $APP_DIR

WORKDIR $APP_DIR
COPY . $APP_DIR
RUN gradle clean build --info bootRepackage -Dprofile=prod
COPY startup.sh $APP_DIR
RUN chmod u+x ./startup.sh
EXPOSE 8080
CMD ["./startup.sh"]
