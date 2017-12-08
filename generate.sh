#!/bin/sh

if [ ! -f swagger-codegen-cli.jar ]; then
    wget http://repo1.maven.org/maven2/io/swagger/swagger-codegen-cli/2.1.6/swagger-codegen-cli-2.1.6.jar -O swagger-codegen-cli.jar
fi
java -jar swagger-codegen-cli.jar generate -l ruby -o . -i swagger/production-171103-metatron-api-production-swagger.json -c config.json
