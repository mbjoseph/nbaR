#!/bin/sh
java -jar ~/git/swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate -c ~/git/nbaR/other/swagger/config.json -i  http://localhost:8080/v2/reference-doc -l r  -t ~/git/nbaR/other/swagger/swagger-templates/ -o ~/git/nbaR
