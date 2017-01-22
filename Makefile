MKDN = ud.md time.md
HTML = $(MKDN:.md=.html)

FLAGS = -s -t html5 --katex -c ud.css

%.html: %.md ud.css
	pandoc $(FLAGS) $< -o $@

all: $(HTML)

rsync: $(HTML)
	rsync ud.css $(HTML) kal@web69.webfaction.com:webapps/kalx/ud

.PHONY: clean

clean:
	rm $(HTML)
