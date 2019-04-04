joins
================

<img src="../resources/cm105-header.png" width="100%" /> <small> <br>
<i>Joined</i> by David Seibold is licensed under
<a href="https://creativecommons.org/licenses/by-nc/2.0/legalcode">CC
BY-NC 2.0</a> <br> </small>

## contents

[introduction](#introduction)  
[prerequisites](#prerequisites)  
\[\]  
\[\]  
\[\]  
\[\]  
[references](#references)

## introduction

“It’s rare that a data analysis involves only a single table of data.
Typically you have many tables of data, and you must combine them to
answer the questions that you’re interested in. Collectively, multiple
tables of data are called **relational data** because it is the
relations, not just the individual datasets, that are important.”
(Wickham and Grolemund, [2017](#ref-Wickham+Grolemund:2017), Sec. 13.1)

Different types of **joins** are methods of combining information from
two data frames (our tables are data frames). To perform a join, the two
data frames must have at least one key-column in common. Here again we
see the importance of [coordinatized
data](cm103-data-reshaping.md#keys-and-values-in-coordinatized-data).

## prerequisites

  - Start every work session by launching `portfolio.Rproj`  
  - Your [project directory
    structure](cm501-proj-m-manage-files.md#plan-the-directory-structure)
    satisfies the course requirements  
  - If the any of the following packages are not yet installed on your
    machine, please [install
    them](cm902-software-studio.md#install-packages)
      - tidyverse

Install student record data from the MIDFIELD project as follows,

    install.packages("drat")
    drat::addRepo("midfieldr")
    install.packages("midfielddata")

Create a new script `explore/0601-joins-explore.R` for today’s work,
write a minimal header and load the packages:

``` r
# your name
# date

# load packages
library("tidyverse")
library("midfielddata")
```

<br> <a href="#top">▲ top of page</a>

``` r
glimpse(midfieldstudents)
#> Observations: 97,640
#> Variables: 15
#> $ id             <chr> "MID25783135", "MID25783147", "MID25783156", "M...
#> $ institution    <chr> "Institution M", "Institution M", "Institution ...
#> $ cip6           <chr> "511199", "131202", "040201", "14XXXX", "14XXXX...
#> $ term_enter     <dbl> 19911, 20041, 20011, 19921, 20091, 20051, 19946...
#> $ transfer       <chr> "N", "N", "N", "N", "N", "N", "N", "N", "N", "N...
#> $ hours_transfer <dbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,...
#> $ sex            <chr> "Male", "Female", "Female", "Male", "Male", "Ma...
#> $ race           <chr> "White", "White", "White", "White", "White", "W...
#> $ age            <dbl> 17, 17, 18, 17, 18, 18, 17, 18, 18, 18, 18, 17,...
#> $ us_citizen     <chr> "Y", "Y", "Y", "Y", "Y", "Y", "Y", "Y", "Y", "Y...
#> $ home_zip       <chr> "29485", "29072", "43026", "29572", "29016", "2...
#> $ high_school    <chr> "411900", "410825", "210568", "411465", "410210...
#> $ sat_math       <dbl> 580, 470, 750, 560, 670, 620, 642, 590, 492, 62...
#> $ sat_verbal     <dbl> 505, 530, 627, 395, 530, 500, 486, 620, 594, 45...
#> $ act_comp       <dbl> 21, 19, 29, 18, 26, 22, 24, 25, 21, 21, 25, 20,...
glimpse(midfieldterms)
#> Observations: 729,014
#> Variables: 13
#> $ id                  <chr> "MID25783135", "MID25783135", "MID25783147...
#> $ institution         <chr> "Institution M", "Institution M", "Institu...
#> $ cip6                <chr> "520101", "520101", "131202", "131210", "1...
#> $ term                <dbl> 19911, 19913, 20041, 20043, 20051, 20053, ...
#> $ level               <chr> "01 Freshman", "02 Sophomore", "01 Freshma...
#> $ standing            <chr> "First Time in College", "Good Standing", ...
#> $ coop                <chr> "N", "N", "N", "N", "N", "N", "N", "N", "N...
#> $ hours_term_attempt  <dbl> 19, 14, 13, 18, 15, 15, 3, 15, 15, 6, 15, ...
#> $ hours_term          <dbl> 19, 14, 17, 18, 15, 15, 3, 15, 15, 6, 18, ...
#> $ gpa_term            <dbl> 2.47, 3.21, 3.76, 2.67, 3.20, 4.00, 4.00, ...
#> $ hours_cumul_attempt <dbl> 19, 33, 13, 31, 46, 61, 64, 79, 94, 100, 1...
#> $ hours_cumul         <dbl> 19, 33, 17, 35, 50, 65, 68, 83, 98, 104, 1...
#> $ gpa_cumul           <dbl> 2.47, 2.79, 3.76, 3.13, 3.15, 3.36, 3.39, ...
glimpse(midfielddegrees)
#> Observations: 97,640
#> Variables: 5
#> $ id          <chr> "MID25783135", "MID25783147", "MID25783156", "MID2...
#> $ institution <chr> "Institution M", "Institution M", "Institution M",...
#> $ cip6        <chr> NA, NA, NA, "521401", NA, NA, "143501", NA, "23010...
#> $ term_degree <dbl> NA, NA, NA, 19963, NA, NA, 20001, NA, 20023, 19966...
#> $ degree      <chr> NA, NA, NA, "Bachelor of Science", NA, NA, "Bachel...
```

The three data frames have three keys in common representing the
individual student, the academic institution, and the academic program
or major.

  - `id`: Unique, anonymized MIDFIELD student identifier
  - `institution`: Anonymized institution name
  - `cip6`: Six-digit CIP code of the program into which the student
    matriculated

## references

<div id="refs">

<div id="ref-Layton+Long+Ohland:2018:midfielddata">

Layton R, Long R and Ohland M (2018) *midfielddata: Student record data
for 98,000 undergraduates.* R package version 0.1.0
<https://midfieldr.github.io/midfielddata/>

</div>

<div id="ref-Wickham+Grolemund:2017">

Wickham H and Grolemund G (2017) *R for Data Science.* O’Reilly Media,
Inc., Sebastopol, CA <https://r4ds.had.co.nz/>

</div>

</div>

***
<a href="#top">&#9650; top of page</a>    
[&#9665; calendar](../README.md#calendar)    
[&#9665; index](../README.md#index)
