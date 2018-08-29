MKDN = cumulant.md ds.md entity.md greeks.md instrument.md random_variable.md README.md time.md ud.md vega.md vs.md
HTML = $(MKDN:.md=.html)

FLAGS = -s -t html5 --katex -c ud.css

%.html: %.md ud.css
	pandoc $(FLAGS) $< -o $@

epub: 
	pandoc -S --toc -o ud.epub meta.txt ud.md instrument.md

html: 
	pandoc $(FLAGS) --toc -H meta.html -o ud.html ud.md instrument.md

rsync: $(HTML)
	rsync ud.css *.html kal@web626.webfaction.com:webapps/kalx/ud

get: 
	rsync 'kal@web626.webfaction.com:webapps/kalx/columbia/*pdf' .

.PHONY: clean
clean:
	rm $(HTML)
