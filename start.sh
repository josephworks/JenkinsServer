echo "Starting!"
echo "Updating / Installing jenkins server!"
rm jenkins.war
wget http://mirrors.jenkins.io/war/latest/jenkins.war
java -jar jenkins.war
echo "Open your browser and connect to http://localhost:8080 to use your jenkins server!"