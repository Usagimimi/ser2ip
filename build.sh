#!/bin/bash
APP=ser2ip

build-app() {
	echo "--> Building for ${GOARCH} ${GOOS}..."
	go build -o ${APP}-${GOOS}-${GOARCH}
}

GOOS=linux GOARCH=386 build-app
GOOS=linux GOARCH=amd64 build-app
GOOS=darwin GOARCH=amd64 build-app
GOOS=windows GOARCH=386 build-app
GOOS=windows GOARCH=amd64 build-app
