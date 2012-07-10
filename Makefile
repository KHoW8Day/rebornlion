
MKDIR = /bin/mkdir
RM = /bin/rm
XSLTPROC = /usr/bin/xsltproc

all :

clean :
	${RM} --recursive --force build dist

build/example/paragraph/%.xml : style/paragraph.xml example/%.xml
	${MKDIR} --parents ${@D}
	${XSLTPROC} --output $@ $^

build/example/page/%.xml : style/page.xml build/example/paragraph/%.xml
	${MKDIR} --parents ${@D}
	${XSLTPROC} --output $@ $^
