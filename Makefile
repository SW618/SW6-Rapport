##################################################################
# Makefile for LaTeX
##################################################################
# Use:
# make
# make clean
# options for ps2pdf: http://pages.cs.wisc.edu/~ghost/doc/AFPL/6.50/Ps2pdf.htm

TEX:=$(shell ls *.tex)
OTHER = *~ *.aux *.dvi *.toc *.bbl *.blg *.gz *.out *.thm *.ps *.idx *.ilg *.ind *.tdo *.cb *.cb2 *.lot *.soc *

test: clean
	latexmk -pv -pdflatex='pdflatex -synctex=1' -pdf master.tex


pdflatex: master.tex
	pdflatex  --shell-escape --synctex=1 master.tex
	biber master
	pdflatex --shell-escape --synctex=1 master.tex
	pdflatex --shell-escape --synctex=1 master.tex
	pdflatex --shell-escape --synctex=1 master.tex

fast:
	latexmk -pdflatex='pdflatex -file-line-error -synctex=1' -pdf master.tex

clean:
	git add -A
	git clean -x -f -e master.pdf

live: clean
	latexmk -pvc -pdflatex='pdflatex -file-line-error -synctex=1' -pdf master.tex


rubber:
	rubber-info master
