# $Id: Makefile,v 1.1 2004/04/22 05:33:51 danieldk Exp $

CURRENTDIR=`pwd`

all:	fmt-html #fmt-pdf

fmt-html:
	jade -t sgml -d src/myhtml.dsl \
		/usr/share/sgml/declaration/xml.dcl \
		src/libranet-basics.xml
	mv *.html html/
	cp src/normal.css html/

fmt-tex:
	jade -t tex -o tex/libranet-basics.tex \
		-d /usr/share/sgml/docbook/stylesheet/dsssl/modular/print/docbook.dsl \
		/usr/share/sgml/declaration/xml.dcl \
		src/libranet-basics.xml
	rm -f tex/*.log tex/*.aux tex/*.out

fmt-pdf: fmt-tex
	(cd pdf ; pdfjadetex ../tex/libranet-basics.tex ;  pdfjadetex ../tex/libranet-basics.tex ;  pdfjadetex ../tex/libranet-basics.tex)


clean:
	rm -rf html/*.html 
	rm -f html/normal.css
	rm -f pdf/*.pdf pdf/*.aux pdf/*.log pdf/*.out
	rm -f tex/*.tex
	rm -f tex/*.dvi