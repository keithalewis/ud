MKDN = cumulant.md ds.md entity.md greeks.md instrument.md random_variable.md README.md time.md ud.md vega.md
HTML = $(MKDN:.md=.html)

FLAGS = -s -t html5 --katex -c ud.css -H header.html

%.html: %.md ud.css
	pandoc $(FLAGS) $< -o $@

all: $(HTML)

rsync: $(HTML)
	rsync ud.css *.html kal@web626.webfaction.com:webapps/kalx/ud

.PHONY: clean

clean:
	rm $(HTML)
