
start sicstus -l %REGULUS%\Prolog\regulus_server_for_java_gui.pl --goal "start_regulus_server_for_java_gui." -a 8067
sleep 5
start java -classpath "prologbeans.jar;RegulusGUI.jar;." -DREGULUS="%REGULUS%" RegulusGUI.RegulusGUI 8067


