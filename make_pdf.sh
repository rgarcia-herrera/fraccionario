cat 00_intro.md \
    01_spagheti.md > README.md

cat 00_intro.md \
    01_spagheti.md > oo_recap.md


awk '{print "    "$0}' spaghetti.bas >> oo_recap.md

cat 02_procedural.md >> README.md
cat 02_procedural.md >> oo_recap.md

awk '{print "    "$0}' procedural.bas >> oo_recap.md


cat 03_tipos_de_datos.md >> README.md
cat 03_tipos_de_datos.md >> oo_recap.md

awk '{print "    "$0}' tipos_de_datos.pas >> oo_recap.md

pandoc oo_recap.md --latex-engine=xelatex -o oo_recap.pdf

# TODO:
# pandoc README.md -o README.latex
# ¿masajear con sed? para título, encabezado, más formato, etc.
# pandoc README.latex --latex-engine=xelatex -o README.pdf
# También hay opción --template=template.latex
