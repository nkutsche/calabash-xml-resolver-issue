set CLBSH_VERSION=1.3.2-100
set CLBSH_VERSION=1.5.4-100

set JAVA_OPTS=-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5005
set JAVA_OPTS=

set MAVEN_OPTS=-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5005
set MAVEN_OPTS=

echo %DATE% %TIME%


::java %JAVA_OPTS% -cp "libs/xmlcalabash-%CLBSH_VERSION%/xmlcalabash-%CLBSH_VERSION%.jar;../../../core/target/epd.converter-1.0.0-SNAPSHOT-module100.jar" -Dcom.xmlcalabash.xproc-configurer=com.nkutsche.xslt.pkg.handler.XProcConfigurer com.xmlcalabash.drivers.Main main.xpl

::java %JAVA_OPTS% -cp "libs/xmlcalabash-%CLBSH_VERSION%/xmlcalabash-%CLBSH_VERSION%.jar;../module" com.xmlcalabash.drivers.Main main.xpl

set ARGS=%JAVA_OPTS% -cp %%classpath;module com.xmlcalabash.drivers.Main main.xpl

mvn exec:exec -Dexec.executable="java" -Dexec.args="%ARGS%"

echo %DATE% %TIME%