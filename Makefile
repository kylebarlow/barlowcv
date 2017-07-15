SHELL := /bin/bash

SOURCES = Makefile cv.tex my-papers.bib awesome-cv.cls cv/*
CVTEXNAME = cv

all: $(CVTEXNAME).pdf
$(CVTEXNAME).pdf: $(CVTEXNAME).tex $(SOURCES)
	xelatex $(CVTEXNAME)
	biber $(CVTEXNAME)
	xelatex $(CVTEXNAME)
	xelatex $(CVTEXNAME)
clean:
	grep -vE '^(#|$$)' .gitignore | xargs rm -f
