SHELL := /bin/bash
NAME := REPLACE_ME_APP_NAME
OS := $(shell uname)
ARTIFACT_ID = jenkinsfile-runner-demo

all: build

check: build test

build:
	java \
		-jar /opt/cwp/custom-war-packager.jar \
		-configPath packager-config.yml

test: 
	echo "do nothing"

install:
	echo "do nothing"

clean:
	rm -rf build release

linux:
	echo "do nothing"

.PHONY: release clean
