convertPDF2Docx =
function(ff, docx = gsub("\\.pdf", ".docx", ff), open = TRUE,
             ascript = "pdfpenConvert2Docx.scpt", delay = 25)
{
   cmd = sprintf("osascript %s %s", ascript, delay)    
   for(i in seq(along = ff)) {
       f = ff[i]
       if(file.exists(docx[i]) && file.info(docx[i])[1, "size"] > 0)
           next
       print(f)
       outfile = file.path("~", basename(docx[i]))
       if(!file.exists(outfile)) {
           #     f = gsub("'", "\\\\\\'", f)
           if(open) {
              Open(f, "PDFpenPro")
              Sys.sleep(3)
           }
           system(cmd)
       } else
           message("file ", outfile, " already exists. Moving it.")
       file.rename(outfile, docx[i])
#    system("killall PDFpenPro")
   }
   
   ff[!file.exists(docx)]
}
