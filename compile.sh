export HOME=/tmp
export PDFFONTS=/usr/share/texmf-dist/fonts
# Step 1: Initial PDFLaTeX
pdflatex -interaction=nonstopmode -output-directory=build main.tex
# Step 2: Bibliography
bibtex build/main.aux
# Step 3: Glossaries
makeglossaries -d build main
# Step 4: Rerun PDFLaTeX for citations and glossaries
pdflatex -interaction=nonstopmode -output-directory=build main.tex
pdflatex -interaction=nonstopmode -output-directory=build main.tex
