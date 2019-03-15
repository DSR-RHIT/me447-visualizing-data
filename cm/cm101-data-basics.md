data basics
================

## contents

[prerequisites](#prerequisites)  
[lecture](#lecture)  
[exercises](#exercises)

## prerequisites

  - Start every work session by launching `portfolio.Rproj`  
  - Your [project directory
    structure](cm501-proj-m-manage-files.md#plan-the-directory-structure)
    satisfies the course requirements  
  - Download the CSV and XLSX files from the course [`data-raw`
    directory](https://github.com/DSR-RHIT/me447-visualizing-data/tree/master/data-raw)
    and save them to your own `data-raw` directory

## lecture

  - [Data basics slides](../slides/sd021-data-basics.pdf)

## exercises

Note: The instruction to **classify a data structure** implies that you

  - determine the number of observations  
  - determine the number of variables  
  - classify every variable as quantitative or categorical  
  - determine the number of levels in every categorical variable  
  - classify everycategorical variables sa ordinal or nominal  
  - classify every quantitative variable as continuous or discrete  
  - other features relevant to the particular display type

**1. Manually tidy Excel data**

  - Open the `VADeaths.xlsx` file in MS Excel (or whatever spreadsheet
    software you use).  
  - In the spreadsheet, manually move, copy, and paste cell entries
    until the data are in tidy form.
  - This is the only time we’ll do a manual operation. By doing this
    manually, you develop a better understanding of what the tidyr
    package does when we use it to script similar operations.
  - Classify the data structure

**2. CSV data from FiveThirtyEight**

We will use the FiveThirtyEight data from:
<https://projects.fivethirtyeight.com/soccer-api/club/spi_matches.csv>

  - Create the R script `explore/0202-data-basics-explore.R` and assign
    the URL to the variable name `url`
  - In the R script, use `read_csv(url)` to scrape the data from the web
  - Use `glimpse()` to examine tha data
  - Write the CSV file to your `data-raw` directory

In addition,

  - Classify the data structure  
  - Determine if the data are tidy or not

**3. XLXS data from US Dept of Agriculture**

Manually download the file `nsn-extract-5-9-18.xlsx` from the US General
Services Administration (GSA) at the following
URL

<https://inventory.data.gov/dataset/67567804-073d-40ad-a710-2b0bed8b84e2/resource/360b0748-d161-4857-a7dc-dfccfaeea096/download/nsn-extract-5-9-18.xlsx>

  - Save the file in your `data-raw` directory
  - Manually open the file and examine the contents
  - Based on the structure you see, use `read_excel()` to input the data
    into R
  - Write the CSV file to your `data` directory

In addition,

  - Classify the data structure  
  - Determine if the data are tidy or not

## references

<div id="refs">

</div>

***
<a href="#top">&#9650; top of page</a>    
[&#9665; calendar](../README.md#calendar)    
[&#9665; index](../README.md#index)
