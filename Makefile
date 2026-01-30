# Resume PDF Generation
# Usage: make all, make clean, or make <specific-file>.pdf

SOURCES := $(wildcard *.md)
PDFS := $(SOURCES:.md=.pdf)

.PHONY: all clean

all: $(PDFS)

%.pdf: %.md
	pandoc $< -o $@ --pdf-engine=pdflatex -V geometry:margin=1in -V pagestyle=plain

clean:
	rm -f $(PDFS)
