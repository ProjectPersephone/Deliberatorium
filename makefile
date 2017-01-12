FILES= \
META-INF \
ok.jsp \
tree.jsp \
WEB-INF 

test:
	cp -R ${FILES} $(TOMCAT_HOME)/webapps/Deliberatorium/

deploy:
	ftp-ssl -p < metawerx-ftp-deploy-script
