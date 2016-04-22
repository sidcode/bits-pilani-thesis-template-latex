# Makefile for BPHC Latex Report Class

LATEXMK=latexmk
LATEXOPT=-jobname="Thesis" -file-line-error
MAIN=main
THESIS=$(MAIN).tex
SOURCES=$(THESIS) Makefile

.PHONY: clean FORCE all

all: 	$(MAIN).pdf

cont: FORCE
	$(LATEXMK) -f -pdf -pvc $(LATEXOPT) $(THESIS)

$(thesis): FORCE
	latexmk -pdf -f $(thesis)

$(MAIN).pdf: .refresh $(SOURCES)
	$(LATEXMK) -f -pdf $(LATEXOPT) $(THESIS)

clean:
	$(LATEXMK) -c $(MAIN).tex
	find . \( -name "*.toc" -o -name "*.fdb_latexmk" \
							-o -name "*.pdfsync" \
                            -o -name "*.log" \
                            -o -name "*.fls" \
                            -o -name "*.aux" \
                            -o -name "*.bbl" \
                            -o -name "*.blg" \
                            -o -name "*.glo" \
                            -o -name "*.ist" \
                            -o -name "*.lof" \
                            -o -name "*.lot" \
                            -o -name "*.out" \
                            -o -name "*.toc" \
                            \) -print0 | xargs -0 rm -f

FORCE:
	touch .refresh
	$(MAKE) $(MAIN).pdf

.refresh:
	touch .refresh
