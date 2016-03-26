cat 00_intro.md \
    01_spagheti.md > README.md

awk '{print "    "$0}' spaghetti.bas >> README.md

cat 02_procedural.md >> README.md

awk '{print "    "$0}' procedural.bas >> README.md


cat 03_tipos_de_datos.md >> README.md

awk '{print "    "$0}' tipos_de_datos.pas >> README.md


pandoc README.md --latex-engine=xelatex -o README.pdf

# TODO:
# pandoc README.md -o README.latex
# ¿masajear con sed? para título, encabezado, más formato, etc.
# pandoc README.latex --latex-engine=xelatex -o README.pdf
# También hay opción --template=template.latex
