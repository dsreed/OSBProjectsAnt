
@rem    OSB / ConfigJar Tool Home directories
set MW_HOME=C:\Oracle\Middleware\Oracle_Home
set ANT_HOME=%MW_HOME%\oracle_common\modules\org.apache.ant_1.9.2
set WL_HOME=%MW_HOME%\wlserver
set OSB_HOME=%MW_HOME%\osb
set CONFIGJAR_HOME=%OSB_HOME%\tools\configjar
set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_102


@rem    System properties required by OSB

set OSB_OPTS=
set OSB_OPTS= %OSB_OPTS% -Dweblogic.home="%WL_HOME%"
set OSB_OPTS= %OSB_OPTS% -Dosb.home="%OSB_HOME%"
set OSB_OPTS= %OSB_OPTS% -Djava.util.logging.config.class=oracle.core.ojdl.logging.LoggingConfiguration
set OSB_OPTS= %OSB_OPTS% -Doracle.core.ojdl.logging.config.file="%CONFIGJAR_HOME%\logging.xml"

set JAVA_OPTS=%JAVA_OPTS% %OSB_OPTS%
set ANT_OPTS=%ANT_OPTS% %OSB_OPTS%




@rem  classpath representing OSB

set CLASSPATH=%CLASSPATH%;%JAVA_HOME%\lib\tools.jar
set CLASSPATH=%CLASSPATH%;%WL_HOME%\server\lib\weblogic.jar
set CLASSPATH=%CLASSPATH%;%MW_HOME%\oracle_common\modules\internal\features\jrf_wlsFmw_oracle.jrf.wls.classpath.jar
set CLASSPATH=%CLASSPATH%;%MW_HOME%\oracle_common\modules\odsi_xquery2004_12.1.3\odsi.xquery.modules_12.1.3.0.jar

set CLASSPATH=%CLASSPATH%;%MW_HOME%\soa\soa\modules\oracle.soa.common.adapters_11.1.1\oracle.soa.common.adapters.jar
set CLASSPATH=%CLASSPATH%;%OSB_HOME%\lib\servicebus.jar


@rem  classpath for ConfigJar tool

set CLASSPATH=%CLASSPATH%;%CONFIGJAR_HOME%\configjar.jar


@rem  ANT classpath

set LOCALCLASSPATH=%CLASSPATH%
