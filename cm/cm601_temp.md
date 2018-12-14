
<a name="top"></a>

# basic elements of file management

[plan the structure at the
beginning](#plan-the-structure-at-the-beginning)  
[each element has its own role](#each-element-has-its-own-role)  
[explicitly link files](#explicitly-link-files)

## plan the structure at the beginning

You recently created the mandatory project-directory
structure

<img src="../resources/icon-folder.png" width="2%" style="display: block; margin: auto;" />
carpentry  
<img src="../resources/icon-folder.png" width="2%" style="display: block; margin: auto;" />
data  
<img src="../resources/icon-folder.png" width="2%" style="display: block; margin: auto;" />
data-raw  
<img src="../resources/icon-folder.png" width="2%" style="display: block; margin: auto;" />
design  
<img src="../resources/icon-folder.png" width="2%" style="display: block; margin: auto;" />
figures  
<img src="../resources/icon-folder.png" width="2%" style="display: block; margin: auto;" />
manage  
<img src="../resources/icon-folder.png" width="2%" style="display: block; margin: auto;" />
practice  
<img src="../resources/icon-folder.png" width="2%" style="display: block; margin: auto;" />
reports  
<img src="../resources/icon-folder.png" width="2%" style="display: block; margin: auto;" />
resources  
<img src="../resources/icon-document-40px.png" width="2%" style="display: block; margin: auto;" />
.gitignore  
<img src="../resources/icon-RStudio.png" width="2%" style="display: block; margin: auto;" />
.Renviron  
<img src="../resources/icon-RStudio.png" width="2%" style="display: block; margin: auto;" />
README.Rmd  
<img src="../resources/icon-Rproj.png" width="2%" style="display: block; margin: auto;" />
portfolio.Rproj

## each element has its own role

<img src="../resources/icon-RStudio.png" width="2%" style="display: block; margin: auto;" />
README.Rmd

  - creates the main page of your portfolio website  
  - introduces your portfolio to the
reader

<img src="../resources/icon-document-40px.png" width="2%" style="display: block; margin: auto;" />
.gitignore

  - directs Git to ignore specific
files

<img src="../resources/icon-RStudio.png" width="2%" style="display: block; margin: auto;" />
.Renviron

  - stores packages in a library separate from base
R

<img src="../resources/icon-folder.png" width="2%" style="display: block; margin: auto;" />
data-raw

  - data in its original form  
  - raw data are never edited
manually

<img src="../resources/icon-folder.png" width="2%" style="display: block; margin: auto;" />
carpentry: R scripts that

  - read files from raw data  
  - tidy and transform the data
  - write tidy data files to data
directory

<img src="../resources/icon-folder.png" width="2%" style="display: block; margin: auto;" />
data

  - tidy data saved here, read by design scripts

## explicitly link files
