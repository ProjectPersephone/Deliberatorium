STDJSPDIRS=META-INF WEB-INF 
FILES= tree.jsp $(STDJSPDIRS)

test:
	cp -R ${FILES} $(TOMCAT_HOME)/webapps/Deliberatorium/

deploy:
	ftp-ssl -p < metawerx-ftp-deploy-script
