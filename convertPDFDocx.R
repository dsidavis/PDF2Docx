convertPDF2Docx =
function(ff, docx = gsub("\\.(pdf|jpg)$", ".docx", ff), open = TRUE,
          ascript = "pdfpenConvert2Docx.scpt", delay = 25, untitled = FALSE)
{
   cmd = sprintf("osascript %s %s", ascript, delay)    
   for(i in seq(along = ff)) {
       f = ff[i]
       if(file.exists(docx[i]) && file.info(docx[i])[1, "size"] > 0)
           next
       print(f)
       outfile = file.path("~", basename(docx[i]))
 #      outfile = path.expand("~/Untitled.docx")
       if(!file.exists(docx[i])) { # !file.exists(outfile)) {
           #     f = gsub("'", "\\\\\\'", f)
           if(open) {
              Open(f, "PDFpenPro")
              Sys.sleep(3)
           }
           system(cmd)
       } else
           message("file ", outfile, " already exists. Moving it.")
       if(untitled)
          outfile = mostRecent("Untitled.*\\.docx", "/Users/duncan")
       if(length(outfile))
          file.rename(outfile, docx[i])
#    system("killall PDFpenPro")
   }
   
   ff[!file.exists(docx)]
}
