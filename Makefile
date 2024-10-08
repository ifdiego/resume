WD=$(shell pwd)
FILE=resume.tex
OUT=diego-alves-cv.pdf

help:
	@echo "Commands are:"
	@echo
	@echo "  build    Build the Docker image"
	@echo "  run      Executes the container and generates the PDF"
	@echo "  clean    Clean up the project"
	@echo "  help     Display help message"
	@echo

build:
	docker build -t latex .

run:
	docker run --rm -v $(WD):/usr/src/app latex pdflatex $(FILE)
	mv resume.pdf $(OUT)

clean:
	rm *.log *.aux *.out *.pdf
