#!/bin/sh

CLASSPATH="build/libs/retail_config-0.0.1.jar"

# Spring Boot uses LOADER_PATH to specify external classpath. It must be used with PropertiesLauncher
LOADER_PATH="./resources"

MAIN_CLASS="org.springframework.boot.loader.PropertiesLauncher"
JAVA_CMD=java

 $JAVA_CMD -classpath "$CLASSPATH" $MAIN_CLASS
