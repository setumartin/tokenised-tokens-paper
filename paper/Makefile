FSWATCH = /usr/bin/env fswatch
LATEXMK = /usr/bin/env latexmk

TEXFILES = \
	main.tex \
	tex/abstract.tex \
	tex/introduction.tex \
	tex/related-work.tex \
	tex/token-composition.tex \
	tex/data.tex \
	tex/analysis.tex \
	tex/conclusion.tex
IMGFILES =
BIBFILES = bib/main.bib

.PHONY: all clean watch

all: main.pdf

main.pdf: $(TEXFILES) $(IMGFILES) $(BIBFILES)
	$(LATEXMK) -pdf -use-make $<

clean:
	$(LATEXMK) -pdf -bibtex -C

watch: $(TEXFILES) $(IMGFILES) $(BIBFILES)
	$(MAKE)
	$(FSWATCH) -o $^ | xargs -n1 sh -c $(MAKE)
