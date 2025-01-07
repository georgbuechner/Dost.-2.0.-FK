all:
	mkdir -p build
	pdflatex -interaction=batchmode -output-directory=build/ main.tex
	cd build && biber main % 
	pdflatex -interaction=batchmode -output-directory=build/ main.tex

debug:
	pdflatex -output-directory=build/ main.tex

final: 
	cp build/main.pdf ~/Documents/seafile/uni/final/dost-2-0-fk.pdf

