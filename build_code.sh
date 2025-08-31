#!/bin/sh

# Compile the Java project with Maven
mvn \
    --batch-mode \
    --no-transfer-progress \
    --offline \
    compile