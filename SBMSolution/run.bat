cd results 
del *.html 
del *.xml
del *.png 
cd ..
set CLASSPATH=resources/lib/Helper-1.0-jar-with-dependencies.jar;%CLASSPATH%
set JYTHONPATH=resources/lib/;%JYTHONPATH%
jybot.bat --timestampoutputs --outputdir results tests/WebTest.robot
