@echo off

echo Create the index and run community search
echo ----------------------------------
EquiTree --equitree-cs ..\Data\example.query --cs-result ..\Data\cs.result ..\Data\example.txt

echo Run insertion
echo ----------------------------------
EquiTree --equitree-ins ..\Data\example.ins --maint-result ..\Data\ins.result ..\Data\example.txt

echo Run deletion
echo ----------------------------------
EquiTree --equitree-del ..\Data\example.del --maint-result ..\Data\del.result ..\Data\example.txt

pause