all: website

website:
	ttree -s src/ -d public_html/ -c lib/ -l lib/ -r -f config --post_chomp -a

clean:
	rm -rf public_html/*

copy-website: website
	cp -r public_html/* ${HOMEPAGE}/mymedialite/

