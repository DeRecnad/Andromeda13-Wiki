@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist D:\Programs\Xampp\hypersonic\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\server\hsql-sample-database\scripts\ctl.bat START)
if exist D:\Programs\Xampp\ingres\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\ingres\scripts\ctl.bat START)
if exist D:\Programs\Xampp\mysql\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\mysql\scripts\ctl.bat START)
if exist D:\Programs\Xampp\postgresql\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\postgresql\scripts\ctl.bat START)
if exist D:\Programs\Xampp\apache\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\apache\scripts\ctl.bat START)
if exist D:\Programs\Xampp\openoffice\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\openoffice\scripts\ctl.bat START)
if exist D:\Programs\Xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\apache-tomcat\scripts\ctl.bat START)
if exist D:\Programs\Xampp\resin\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\resin\scripts\ctl.bat START)
if exist D:\Programs\Xampp\jetty\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\jetty\scripts\ctl.bat START)
if exist D:\Programs\Xampp\subversion\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist D:\Programs\Xampp\lucene\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\lucene\scripts\ctl.bat START)
if exist D:\Programs\Xampp\third_application\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist D:\Programs\Xampp\third_application\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\third_application\scripts\ctl.bat STOP)
if exist D:\Programs\Xampp\lucene\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist D:\Programs\Xampp\subversion\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\subversion\scripts\ctl.bat STOP)
if exist D:\Programs\Xampp\jetty\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\jetty\scripts\ctl.bat STOP)
if exist D:\Programs\Xampp\hypersonic\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist D:\Programs\Xampp\resin\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\resin\scripts\ctl.bat STOP)
if exist D:\Programs\Xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT D:\Programs\Xampp\apache-tomcat\scripts\ctl.bat STOP)
if exist D:\Programs\Xampp\openoffice\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\openoffice\scripts\ctl.bat STOP)
if exist D:\Programs\Xampp\apache\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\apache\scripts\ctl.bat STOP)
if exist D:\Programs\Xampp\ingres\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\ingres\scripts\ctl.bat STOP)
if exist D:\Programs\Xampp\mysql\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\mysql\scripts\ctl.bat STOP)
if exist D:\Programs\Xampp\postgresql\scripts\ctl.bat (start /MIN /B D:\Programs\Xampp\postgresql\scripts\ctl.bat STOP)

:end

