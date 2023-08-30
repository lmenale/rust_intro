# https://pandoc.org/MANUAL.html#slide-shows

SLIDE_OPTIONS=-t revealjs --css=./docs/custom.css -s

all: index.html

index.html: slides.md reveal.js/css/reveal.scss
	pandoc $(SLIDE_OPTIONS) $< -o docs/$@

watch: slides.md reveal.js/css/reveal.scss index.html
	fswatch -o --event Updated $< | xargs -n1 -I{} sh -c "echo Rebuilding...; pandoc $(SLIDE_OPTIONS) $< -o index.html"

full: slides.md reveal.js/css/reveal.scss
	pandoc $(SLIDE_OPTIONS) --self-contained $< -o index.html

reveal_version=4.5.0

reveal.js/css/reveal.scss:
	wget -O /tmp/$(reveal_version).tar.gz https://github.com/hakimel/reveal.js/archive/refs/tags/$(reveal_version).tar.gz
	tar xvzf /tmp/$(reveal_version).tar.gz
	rm /tmp/$(reveal_version).tar.gz
	mv reveal.js-$(reveal_version) reveal.js
	touch $@
