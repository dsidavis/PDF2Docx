dir = "PDFs"
ff = list.files(dir, pattern = "\\.pdf$", full = TRUE)[c(1,3)]
docx = gsub("\\.pdf", ".docx", basename(ff))
fdocx = file.path(path.expand("~/PDFPenProDocx"), docx)
for(i in seq(along = ff)) {
    f = ff[i]
    print(f)
    Open(f, "PDFpenPro")
    Sys.sleep(3)
    system("osascript menu.scpt")
    file.rename(file.path("~", docx[i]), fdocx[i])
#    system("killall PDFpenPro")
}
