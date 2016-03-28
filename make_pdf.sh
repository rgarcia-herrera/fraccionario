cat 00_intro.md \
    01_spagheti.md > README.md
cat 00_intro.md \
    01_spagheti.md > oo_recap.md

echo '```r' >> oo_recap.md
echo >>  oo_recap.md
cat spaghetti.bas >> oo_recap.md
echo '```' >> oo_recap.md

cat 02_procedural.md >> README.md
cat 02_procedural.md >> oo_recap.md
echo '```r' >> oo_recap.md
echo >>  oo_recap.md
cat procedural.bas >> oo_recap.md
echo '```' >> oo_recap.md

cat 03_tipos_de_datos.md >> README.md
cat 03_tipos_de_datos.md >> oo_recap.md


cat 03.1_tipos_de_datos_en_C.md >> README.md
cat 03.1_tipos_de_datos_en_C.md >> oo_recap.md


echo '```C' >> oo_recap.md
echo >>  oo_recap.md
cat tipos_de_datos.c >> oo_recap.md
echo '```' >> oo_recap.md


cat 03.2_tipos_de_datos_pascal.md >> README.md
cat 03.2_tipos_de_datos_pascal.md >> oo_recap.md

echo '```pascal' >> oo_recap.md
echo >>  oo_recap.md
cat tipos_de_datos.pas >> oo_recap.md
echo '```' >> oo_recap.md


pandoc oo_recap.md --latex-engine=xelatex --toc \
       --variable title="Operaciones con Vectores" \
       --variable author="Rodrigo García Herrera" \
       --variable lang=es \
       --variable date=`date +%F` \
       --variable abstract="Reflexión didáctica acerca de algunos conceptos de Programación Orientada a Objetos" \
       --highlight-style=tango \
       -o oo_recap.pdf

# TODO:
# pandoc README.md -o README.latex
# ¿masajear con sed? para título, encabezado, más formato, etc.
# pandoc README.latex --latex-engine=xelatex -o README.pdf
# También hay opción --template=template.latex
