#!/bin/bash

# Declare input argument as a variable

FILE=Dinkins_assignment1.md
new=fooddiary

#echo "What file would you like to convert from markdown to HTML, DOCX, ODT, PDF?"
#read $MD

pandoc -o $new.html $FILE # Convert markdown to HTML

pandoc -o $new.docx $FILE # Convert markdown to DOCX

pandoc -o $new.odt $FILE # Convert markdown to ODT

pandoc -V geometry:margin=1in -o $new.pdf $FILE # Convert markdown to PDF with widder margins

echo "Converted $FILE to HTML, DOCX, ODT, PDF"
