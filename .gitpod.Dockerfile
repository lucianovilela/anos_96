FROM httpd:2.4
COPY ./public-html/ /usr/local/apache2/htdocs/

RUN sed -i \
        -e 's/^#\(LoadModule .*mod_cgid.so\)/\1/' \
        -e 's/^#\(LoadModule .*mod_cgi.so\)/\1/' \

        conf/httpd.conf
