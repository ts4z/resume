
default: tjs.pdf

tjs.pdf: tjs.dvi
	dvipdf tjs.dvi

tjs.dvi: tjs.tex tscv.sty
	latex tjs.tex

open: tjs.pdf
	xdg-open tjs.pdf

clean:
	-rm -f *.dvi *.pdf
