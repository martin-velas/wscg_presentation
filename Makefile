CO=prezentacia

all: $(CO).pdf

pdf: $(CO).pdf

show: pdf
	evince $(CO).pdf 2> /dev/null &

$(CO).pdf: clean
	pdflatex $(CO)
	pdflatex $(CO)

clean:
	rm -f *.dvi *.log $(CO).blg $(CO).bbl $(CO).toc *.aux $(CO).out
	rm -f $(CO).pdf $(CO).ps $(CO).tar.gz
	rm -f *.nav *.snm
	rm -f *~

pack:
	tar czvf $(CO).tar.gz *
