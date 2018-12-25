
<a name="top"></a>

# basic elements of file management

[plan the structure at the
beginning](#plan-the-structure-at-the-beginning)  
[each element has its own role](#each-element-has-its-own-role)  
[explicitly link files](#explicitly-link-files)

## plan the structure at the beginning

You recently created the mandatory project-directory structure

<img src="../resources/icon-folder.png" width="2%" /> carpentry  
<img src="../resources/icon-folder.png" width="2%" /> data  
<img src="../resources/icon-folder.png" width="2%" /> data-raw  
<img src="../resources/icon-folder.png" width="2%" /> design  
<img src="../resources/icon-folder.png" width="2%" /> figures  
<img src="../resources/icon-folder.png" width="2%" /> manage  
<img src="../resources/icon-folder.png" width="2%" /> practice  
<img src="../resources/icon-folder.png" width="2%" /> reports  
<img src="../resources/icon-folder.png" width="2%" /> resources  
<img src="../resources/icon-document-40px.png" width="2%" />
.gitignore  
<img src="../resources/icon-RStudio.png" width="2%" /> .Renviron  
<img src="../resources/icon-RStudio.png" width="2%" /> README.Rmd  
<img src="../resources/icon-Rproj.png" width="2%" /> portfolio.Rproj

## each element has its own role

<img src="../resources/icon-RStudio.png" width="2%" /> README.Rmd

  - creates the main page of your portfolio website  
  - introduces your portfolio to the reader

<img src="../resources/icon-document-40px.png" width="2%" /> .gitignore

  - directs Git to ignore specific files

<img src="../resources/icon-RStudio.png" width="2%" /> .Renviron

  - stores packages in a library separate from base R

<img src="../resources/icon-folder.png" width="2%" /> data-raw

  - data in its original form  
  - raw data are never edited manually

<img src="../resources/icon-folder.png" width="2%" /> carpentry: R
scripts that

  - read files from raw data  
  - tidy and transform the data
  - write tidy data files to data directory

<img src="../resources/icon-folder.png" width="2%" /> data

  - tidy data saved here, read by design scripts

## explicitly link files

***
<a href="#top">&#9650; top of page</a>    
[&#9665; calendar](../README.md#calendar)    
[&#9665; index](../README.md#index)
