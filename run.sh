docker build -t my-apache2 .
docker stop apache
docker rm  apache
docker run  -dit --name apache -p 8080:80 -v ${PWD}/cgi-bin:/usr/local/apache2/cgi-bin my-apache2
