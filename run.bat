@echo off
title �ҵ�app
set WORKDIR="%cd%"
echo ��ǰ����Ŀ¼%WORKDIR%
cd /D F:\workspace_icar_server\spring-boot-test
call mvn clean
call mvn package -DskipTests
pause
copy /y ./target/spring-boot-test-*-SNAPSHOT-test.jar %WORKDIR%/
java -jar spring-boot-test-*-SNAPSHOT-test.jar
pause