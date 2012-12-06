TARGET=RS_VISIGRAPP
TEXSRC=RS_VISIGRAPP.tex
PDF=$(TARGET).pdf
BIBFILE=RS_VISIGRAPP.bib

pdf: $(PDF)

$(PDF): $(TEXSRC) $(BIBFILE)
	pdflatex $(TARGET).tex
	bibtex $(TARGET)
	pdflatex $(TARGET).tex
	pdflatex $(TARGET).tex
	pdflatex $(TARGET).tex

clean:
	rm *.ps $(TARGET).pdf *.dvi *.log *.aux *.bbl *.blg *.bak *.lof *.lot *.out *.toc
