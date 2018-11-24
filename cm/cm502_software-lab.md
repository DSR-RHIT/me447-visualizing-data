
# software lab

  - [prerequisites](#prerequisites)
  - [setup GitHub](#setup-github)
  - [create a repo](#create-a-repo)
  - [create an Rproject](#create-an-rproject)
  - [create the Renviron](#create-the-renviron)
  - [setup directories](#setup-directories)
  - [edit gitignore](#edit-gitignore)
  - [invite collaborator](#invite-collaborator)
  - [commits](#commits)
  - [edit README](#edit-readme)

## prerequisites

You should already have done the following

  - Installed git locally
  - Obtained a free GitHub account
  - Practiced creating a test repo (when you cached your credentials)

## setup GitHub

GitHub is a hosting service that provides an online home for your
Git-based projects—critically important for sharing with collaborators.
Once you have a GitHub account, you will update your repositories using
the RStudio interface.

  - [Join GitHub
    Education](http://happygitwithr.com/github-acct.html#free-private-repos)
    Follow the links to join GitHub Education — it’s free.

Optional reading: Read section 4 of [Excuse me, do you have a moment to
talk about version
control?](https://dx.doi.org/10.7287%2Fpeerj.preprints.3159v2) for a
good introduction to GitHub repositories.

Setup GitHub following these instructions. I suggest you read the full
instructions for one of the steps before doing that step.

  - Some instructions ask you to type commands in the “shell”. To access
    the shell, open RStudio and use the pulldown menu *Tools \> Shell*.
  - [Introduce yourself to
    Git](http://happygitwithr.com/hello-git.html#hello-git) using the
    name and email you used with your GitHub account
  - [Cache your username and
    password](http://happygitwithr.com/credential-caching.html#credential-caching)
    or so you don’t need to authenticate yourself to GitHub
    interactively ad nauseum. Alternatively, you can [set up SSH
    keys](http://happygitwithr.com/ssh-keys.html#ssh-keys).  
  - [Prove RStudio can find local
    Git](http://happygitwithr.com/rstudio-git-github.html#rstudio-git-github)
    and, therefore, can talk to GitHub

Once everything is working OK, you may delete any temporary test repos
you made.

  - Delete the local test project directories
  - Navigate to the repo on GitHub and go to *Settings \> Danger Zone \>
    Delete this repository*

## create a repo

Create a repo on GitHub called `portfolio-last-first`, replacing `last`
with your last name (family name or surname) and `first` with your first
name (given name or forename)

  - Make the repo private
  - Check the box to *Initialize this repository with a README*
  - Pulldown the *Add gitignore* menu to *R*
  - A license is optional (private repos for classwork don’t generally
    need a license)
  - *Create repository*

## create an Rproject

Instructions adapted from (Bryan, [2018](#ref-Bryan2018))

  - Navigate to your portfolio repo on GitHub  
  - Copy the HTTPS clone URL to your clipboard via the green “Clone or
    Download” button. The URL will look something like this:
    `https://github.com/jennybc/myrepo.git`

In RStudio,

  - *File \> New Project \> Version Control \> Git*
  - Paste the repo URL into the *repository URL* box
  - Select a location on your computer to save the project  
  - Click *Create Project* to create a new directory

The new project directory will be all of these things:

  - a directory or “folder” on your computer
  - a local Git repository linked to a remote GitHub repository
  - an RStudio Project

Check yourself

  - Close RStudio
  - Restart RStudio
  - You should see a `Git` tab in a pane ribbon as well as in the
    RStudio top ribbon

Lastly, let’s check your project directory. While you may have
additional files or folders (for example, when you initialized your repo
you may have created `.gitignore` or `README.md`), you should have at
least the following folders and files,

    portfolio-last-first/
        `-- portfolio-last-first.Rproj

Optional reading if you want to read more about it or if you need to
setup a repo for an existing RStudio Project.

  - [New project, GitHub
    first](http://happygitwithr.com/new-github-first.html) These are the
    steps I summarized above.
  - [Existing project, GitHub
    first](http://happygitwithr.com/existing-github-first.html)
  - [Existing project, GitHub
    last](http://happygitwithr.com/existing-github-last.html)

## create the Renviron

The `.Renviron` file is a text file that directs R packages to be
installed in the `R/library` directory created earlier. To create the
file, with RStudio open,

  - Create a new text file, *File menu \> New File \> Text File*.
  - Save the file to the `portfolio` main directory using the filename
    *.Renviron*

In this file, write the following line of text that tells R the path to
the stand-alone package library you created earlier.

  - Windows: `R_LIBS_USER="C:/R/library"`
  - Linux: `R_LIBS_USER="~/R/library"`

Now let’s see if the library path you made works.

  - Find the RStudio pane with *Packages* in its ribbon. Select
    *Packages \> Install*
  - In the dialog box that appears, the *Install to Library* strip
    should show `C:/R/library [Default]` (in Windows) or `~/R/library
    [Default]` in Linux

If the *Install to Library* is not correct, check that

  - Your have opened an R project
  - The `.Renviron` file is in the project top level directory
  - The `.Renviron` file has the correct contents described earlier  
  - The file path in the `.Renviron` file agrees with the path to the
    `R/library` directory you made earlier

If the *Install to Library* is correct,

  - Type `tidyverse` in the *Packages* box  
  - *Install*

If all goes well, you’ll see something like this in the R Console

    ## > install.packages("tidyverse")
    ## Installing package into 'C:/R/library' 
    ## (as 'lib' is unspecified)
    ## trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/tidyverse_1.2.1.zip'
    ## Content type 'application/zip' length 92547 bytes (90 KB)
    ## downloaded 90 KB
    ## 
    ## package 'tidyverse' successfully unpacked and MD5 sums checked

Let’s check your project directory. While you may have additional files
or folders (for example, when you initialized your repo you may have
created `.gitignore` or `README.md`), you should have at least the
following folders and files,

    portfolio-last-first/
        |-- .Renviron
        `-- portfolio-last-first.Rproj

Remember, every time you create a new project (with or without version
control), paste a copy of the `.Renviron` file at the top level of the
project directory

## setup directories

All we are going to do is create a set of empty sub-directories
(folders).

  - Open the R project for your portfolio

Next, use one of these two approaches

  - In your OS, use your usual method for creating folders manually
  - In RStudio, find *Files* in the pane ribbon and select *New Folder*

Using either approach, create new folders for `data`, `manage`, etc.
When done, the directory tree should look like this (you might have
additional files such as `.gitignore` or `README.md`)

    portfolio-last-first/
        |-- data/
        |-- data-raw/
        |-- displays/
        |-- graph/
        |-- practice/
        |-- reports/
        |-- resources/
        |-- tidy/
        |-- .Renviron
        `-- portfolio-last-first.Rproj

## edit gitignore

The `.gitignore` file lists local files excused from version control and
therefore not shared with collaborators.

You originally created the `.gitignore` file when you set up the repo.
In RStudio, open `.gitignore`. If you set it up to ignore R, the first
few lines of your file should look something like this,

    # History files
    .Rhistory
    .Rapp.history
    
    # Session Data files
    .RData
    
    ... (etc) 

If your project directory does not contain `.gitignore` file, you
probably skipped that step when you created the repo. No worries. You
can create the file as follows,

  - In RStudio, *File \> New File \> Text File*  
  - *File \> Save As* to your project main directory with the name
    (starts with a period) `.gitignore`

Once the file exists,

  - Open the `.gitignore` file
  - Add these lines

<!-- end list -->

    .Rhistory
    .Rapp.history
    .RData
    .Rproj.user/

Because your collaborators can render your Rmd files themselves, we can
excuse rendered documents, e.g., HTML files or docx files, from version
control. Add these lines of code to the `.gitignore` file.

    # Possible rendered files in the main directory
    *.html
    *.docx
    
    # Possible rendered files in the sub-directories
    */*.html
    */*.docx

  - Save and close the gitignore file

Anytime you create a folder or a file you want git to ignore, just add
its path to the `.gitignore` file

If you select the `Git` tab in the RStudio pane, all files you
identified in `.gitignore` should disappear from the list of unstaged
files.

Lastly, let’s check your project directory. While you may have
additional files or folders, you should have at least the following:

    portfolio-last-first/
        |-- carpentry/
        |-- data/
        |-- data-raw/
        |-- design/
        |-- displays/
        |-- practice/
        |-- reports/
        |-- resources/
        |-- .gitignore
        |-- .Renviron
        `-- portfolio-last-first.Rproj

## invite collaborator

We get two primary benefits from using version control

  - I can easily review and comment on your work  
  - You can easily revert to an earlier version of the project

To invite me to be a collaborator, navigate to your portfolio repo on
GitHub and

1.  Select the *Settings* tab
2.  Select the *Collaborators* menu
3.  In the *Search by user name* box, type my GitHub name, “graphdr”
4.  *Add Collaborator*

<img src="../resources/images/github-collaborate-2.png" width="100%" />

## commits

Open your portfolio project

  - Select the *Git* tab

If there are files shown in the Git pane,

  - Click your cursor in the *git* pane
  - Select all the files using the keyboard shortcut *Ctrl A* (*Command
    A* in the Mac OS)
  - Stage all files by clicking in one of the *Staged* boxes
  - Select *Commit*
  - In the text box, write a short but descriptive message that
    summarizes the nature of the commit
  - *Commit*
  - *Pull* and you will see the message *Current branch master is up to
    date*  
  - *Close*
  - *Push*
  - *Close*

Navigate to your online repo and you should find that it includes all
your changes.

## edit README

The README file that resides at the top level of your project directory
is the landing page of your repo. This is the first glimpse a reader has
of your project.

When you created your project repo, if you checked the box for
*Initialize the repo with a README*, then your project should have a
`README.md` file. If not, no worries. We’re going to edit it using R
Markdown anyway.

We’re going to create an R Markdown file to edit or create the README
file.

  - In RStudio, *File \> New File \> R Markdown … \> OK*
  - Delete the default script
  - *Save As* to the top level of your project with the filename
    `README.Rmd`

Add the YAML header for a GitHub document and your name, as follows. You
can edit the title and date to suit yourself.

    ---
    output: github_document
    ---

Create a level-1 heading for the repo title and add your name and date.
By using the inline R code `Sys.Date()`, the date is automatically set
to the current date.

``` 
# Portfolio of data displays  

Your Name  
`r Sys.Date()`  
```

Add some prose that introduces your portfolio.

In the RStudio menu ribbon, click the *Knit* button. You can also use
the keyboard shortcut Ctrl + Shift + K.

Your project directory should look something like this,

    portfolio-last-first/
        |-- carpentry/
        |-- data/
        |-- data-raw/
        |-- design/
        |-- displays/
        |-- practice/
        |-- reports/
        |-- resources/
        |-- .gitignore
        |-- .Renviron
        |-- README.md
        |-- README.Rmd
        `-- portfolio-last-first.Rproj

Start writing the prose to describe the project.

When you end your R session, make sure to

  - Stage
  - Commit
  - Pull
  - Push

For more information on writing a good README file, see
<https://github.com/noffle/art-of-readme>

## references

<div id="refs">

<div id="ref-Bryan2018">

Bryan, Jenny (2018) Happy Git and GitHub for the useR
(<http://happygitwithr.com/>).

</div>

</div>

-----

[Calendar](../README.md#calendar)  
[Index](../README.md#index)
