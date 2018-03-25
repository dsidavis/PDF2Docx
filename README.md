Note Javanbahkt-2014 is retracted.


## 
```
dir = "../NewPDFs"
ff = list.files(dir, pattern = "\\.pdf$", full = TRUE, recursive = TRUE)
convertPDF2Docx(ff)
```

The ones that failed are identified with
```
m = ff[!file.exists(gsub("pdf$", "docx", ff))]
```

These are all encrypted/have a password and PDFpenPro does not attempt to convert them.
```
 [1] "../NewPDFs/Barmah Forest Virus/Johansen-2005.pdf"                         
 [2] "../NewPDFs/Crimean Congo Hemorrhagic Fever Virus/Fazlalipour-2016.pdf"    
 [3] "../NewPDFs/Dobrava Virus/Yasuda-2012.pdf"                                 
 [4] "../NewPDFs/Getah Virus/Fukunaga-1981.pdf"                                 
 [5] "../NewPDFs/Getah Virus/Imagawa-1981.pdf"                                  
 [6] "../NewPDFs/Getah Virus/Kawamura-1987.pdf"                                 
 [7] "../NewPDFs/Getah Virus/Kumanomido-1986.pdf"                               
 [8] "../NewPDFs/Getah Virus/Matsumura-1981.pdf"                                
 [9] "../NewPDFs/Getah Virus/Sentsui-1985.pdf"                                  
[10] "../NewPDFs/Getah Virus/Sugiyama-2009.pdf"                                 
[11] "../NewPDFs/Getah Virus/Yago-1987.pdf"                                     
[12] "../NewPDFs/Seoul Virus/Ibrahim-1996-Seroepidemiological survey of wil.pdf"
[13] "../NewPDFs/Seoul Virus/Ibrahim-2013-Epidemiology of hantavirus infect.pdf"
[14] "../NewPDFs/Seoul Virus/Luan-2012-Studies on hantavirus infection in s.pdf"
[15] "../NewPDFs/Seoul Virus/Morita-1994-Different transmissibility of 2 is.pdf"
[16] "../NewPDFs/Seoul Virus/Truong-2009-Molecular epidemiological and sero.pdf"
[17] "../NewPDFs/Seoul Virus/Yasuda-2012-Application of truncated nucleocap.pdf"
[18] "../NewPDFs/Seoul Virus/Yoshimatsu-1997-Hantavirus infection in SCID m.pdf"
[19] "../NewPDFs/Tula Virus/Yoshimatsu-2017.pdf"                                
```

So with manual intervention - processing the files in blocks of 20 to 50, 
restarting PDFPenPro when there were errors or too many files were open
and the system was sluggish, getting past the password protected files, 
etc. - we now have all but 19 of the 612 files as docx files.


## menu.scpt

Script is misnamed now.

Different delays for different number of pages
Change the output directory
Avoid same file names in different directories.
Avoid duplicate files (contents) that are in different directories.


## To Fix
+ Passwords
+ ' in the name

+ [Done] Archive PDF/A files.
   + Change the preferences in PDFpenPro  to unlock these.


+ Recognize an error after we "click" the Export button.


## With ' in the file name.

Handled by opening these files in pdfpenpro manually and then running
convertPDF2Docx( open = FALSE)
```
 [7] "../NewPDFs/Crimean Congo Hemorrhagic Fever Virus/O'Hearn-2016.pdf"        
[19] "../NewPDFs/O'nyong'nyong Virus/Kading-2013.pdf"                           
```
