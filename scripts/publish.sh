#!/bin/bash

langs=( "gradle" "go" "javascript" "python" )

for i in "${langs[@]}"
do

cp ./lang/Jenkinsfile ../packs/$i/
cp ./lang/charts/Makefile ../packs/$i/charts/
cp ./lang/charts/values.yaml ../packs/$i/charts/
cp ./lang/charts/templates/deployment.yaml ../packs/$i/charts/templates/
cp ./lang/charts/templates/configmap.yaml  ../packs/$i/charts/templates/
cp ./lang/charts/templates/service.yaml    ../packs/$i/charts/templates/

done
