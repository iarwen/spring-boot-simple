@echo off
title 我的app
set WORKDIR="%cd%"
echo 当前工作目录%WORKDIR%
cd /D F:\workspace_icar_server\spring-boot-test
call mvn clean
call mvn package -DskipTests
pause
copy /y ./target/spring-boot-test-*-SNAPSHOT-test.jar %WORKDIR%/
java -jar spring-boot-test-*-SNAPSHOT-test.jar
pause