cd results 
del *.html 
del *.xml
del *.png 
cd ..
jybot.bat --timestampoutputs --outputdir results tests/WebTest.robot
