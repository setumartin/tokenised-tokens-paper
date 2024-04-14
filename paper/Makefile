FSWATCH = /usr/bin/env fswatch
LATEXMK = /usr/bin/env latexmk

TEXFILES = \
	main.tex \
	tex/abstract.tex \
	tex/introduction.tex \
	tex/related-work.tex \
	tex/token-composition.tex \
	tex/analysis.tex \
	tex/conclusion.tex
IMGFILES = \
	img/degree-distributions/filtered-token-graph-degrees.png \
	img/degree-distributions/token-graph-in-out-degrees.png \
	img/degree-distributions/unfiltered-token-graph-degrees.png
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
