all: website

website:
	ttree -s src/ -d public_html/ -c lib/ -l lib/ -r -f config --post_chomp -a

clean:
	rm -rf public_html/*
	rm -rf redir_public_html/*

redir:
	ttree -s redir_src/ -d redir_public_html/ -c lib -l lib -r -f config --post_chomp -a
