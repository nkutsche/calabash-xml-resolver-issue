set CLBSH_VERSION=1.3.2-100
set CLBSH_VERSION=1.5.4-100

set JAVA_OPTS=-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5005
set JAVA_OPTS=

echo %DATE% %TIME%


mvn -f module/pom.xml install && mvn exec:exec -Dexec.executable="java"

echo %DATE% %TIME%