all: readme pdf


readme:
	cat 00_intro.md \
	    01_spagheti.md \
	    02_procedural.md \
	    03_tipos_de_datos.md \
	    03.1_tipos_de_datos_en_C.md \
	    03.2_tipos_de_datos_pascal.md \
	    04_oo.md \
	    04.1_oo_pascal.md \
	    04.2_oo_cpp.md \
	    04.3_oo_python.md \
	> README.md


pdf:
	cat 00_intro.md \
	    01_spagheti.md > oo_recap.md

	echo '```r' >> oo_recap.md
	echo >>  oo_recap.md
	cat spaghetti.bas >> oo_recap.md
	echo '```' >> oo_recap.md


	cat 02_procedural.md >> oo_recap.md
	echo '```r' >> oo_recap.md
	echo >>  oo_recap.md
	cat procedural.bas >> oo_recap.md
	echo '```' >> oo_recap.md

	cat 03_tipos_de_datos.md >> oo_recap.md

	cat 03.1_tipos_de_datos_en_C.md >> oo_recap.md

	echo '```C' >> oo_recap.md
	echo >>  oo_recap.md
	cat tipos_de_datos.c >> oo_recap.md
	echo '```' >> oo_recap.md

	cat 03.2_tipos_de_datos_pascal.md >> oo_recap.md

	echo '```pascal' >> oo_recap.md
	echo >>  oo_recap.md
	cat tipos_de_datos.pas >> oo_recap.md
	echo '```' >> oo_recap.md

	cat 04_oo.md 04.1_oo_pascal.md >> oo_recap.md

	echo '```pascal' >> oo_recap.md
	echo >>  oo_recap.md
	cat uvectores_oo.pas >> oo_recap.md
	echo '```' >> oo_recap.md

	echo '```pascal' >> oo_recap.md
	echo >>  oo_recap.md
	cat vectores_oo.pas >> oo_recap.md
	echo '```' >> oo_recap.md

	cat 04.2_oo_cpp.md >> oo_recap.md

	echo '```cpp' >> oo_recap.md
	echo >>  oo_recap.md
	cat vectores_oo.h >> oo_recap.md
	echo '```' >> oo_recap.md

	echo '```cpp' >> oo_recap.md
	echo >>  oo_recap.md
	cat vectores_oo.cpp >> oo_recap.md
	echo '```' >> oo_recap.md

	cat 04.3_oo_python.md >> oo_recap.md

	echo '```python' >> oo_recap.md
	echo >>  oo_recap.md
	cat vectores_oo.py >> oo_recap.md
	echo '```' >> oo_recap.md

	echo '```python' >> oo_recap.md
	echo >>  oo_recap.md
	cat vectores.py >> oo_recap.md
	echo '```' >> oo_recap.md



	pandoc oo_recap.md --latex-engine=xelatex --toc \
	       --variable title="Operaciones con Vectores" \
	       --variable author="Rodrigo García Herrera" \
	       --variable lang=es \
	       --variable date=`date +%F` \
	       --variable abstract="Reflexión didáctica acerca de algunos conceptos de Programación Orientada a Objetos" \
	       --highlight-style=tango \
	       -o oo_recap.pdf
