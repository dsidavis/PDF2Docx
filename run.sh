for f in PDFs/*.pdf ; do
    echo "$f" ;
    open -a PDFpenPro "$f" ;
    sleep 1;
    osascript menu.scpt ;
done
