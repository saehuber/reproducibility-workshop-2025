#!/bin/bash

basedir=$(dirname $0)
tmpdir=$(mktemp -d)

# copy necessary files to temporary dir
cd $tmpdir
cp ${basedir}/../analysis/{spacewalk_record.pdf,statistics.tex} .
sed -e 's/\.\.\/analysis\///g' ${basedir}/manuscript.tex > manuscript.tex

# compile manuscript
pdflatex manuscript.tex
bibtex manuscript.aux
pdflatex manuscript.tex
pdflatex manuscript.tex

# go back to working directory
cd -
cp $tmpdir/manuscript.{pdf,log} .

# for diagnostics
ls -ltr $tmpdir
rm -Rf $tmpdir
