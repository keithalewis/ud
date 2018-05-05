MKDN = ud.md time.md
HTML = $(MKDN:.md=.html)

FLAGS = -s -t html5 --katex -c ud.css -H header.html

%.html: %.md ud.css
	pandoc $(FLAGS) $< -o $@

all: $(HTML)

rsync: $(HTML)
	rsync ud.css $(HTML) kal@web626.webfaction.com:webapps/kalx/ud

gimme:
	rsync kal@web626.webfaction.com:webapps/kalx/fms/rough/pp.tar pp.tar

.PHONY: clean

clean:
	rm $(HTML)
