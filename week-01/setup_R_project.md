### Set up an R project

-   Login with your usual user name.

-   Create a folder for the course in your preferred directory. For example, C:/Users/layton/Documents/courses/me447.

-   Open RStudio. Some error statements will probably appear. No worry. We’re about to take care of that.

-   Create a new RStudio Project using File menu &gt; New Project &gt; Existing Directory. Use the Browse button to find the course folder you just made. Select that folder &gt; Create Project.

### Create an .Renviron file

These steps are Windows-specific (I'm not sure if the problem needs solving in Linux or Mac platforms.)

The purpose of the .Renviron file is to establish a library for R packages that is independent of the R software. Then you can update R to the latest version and not have to re-install all the packages you use.

-   In RStudio, open a new text file using File menu &gt; New File &gt; Text File.

-   Write the following line in the text file

    `R_LIBS_USER="C:/R/library"`

-   Save the file using the filename .Renviron in your course folder (don’t forget the dot that starts the filename). For example, C:/Users/layton/Documents/courses/me447/.Renviron

-   Create a new directory C:/R/library. (That is, in C: create a folder named R. In R create a folder named library.) This is the directory pointed to by the .Renviron file.

### For new RStudio projects

-   Whenever you create a new RStudio Project, paste a copy of the .Renviron file in the project root directory.

### Testing your installation

-   Close RStudio

-   Open RStudio. No error statements should appear (we hope).

-   If the course project is open, File &gt; Close Project. No errors?

-   If the course project is closed, open it with File &gt; Open Project. No errors?

-   Now let’s see if the library path you made works. The RStudio interface is divided into 4 “window panes”. In the lower right pane, select the Packages tab. Click Install.

-   In the dialog box that appears, the Install to Library strip should indicate `C:/R/library [Default]`.

-   In the Packages entry box, type plyr and click Install. If all goes well, you’ll see something like this in the lower left pane (the “R Console”).

``` r
Installing package into "C:/R/library" 
(as "lib" is unspecified)
trying URL "http://ftp.ussg.iu.edu/CRAN/bin/windows/contrib/3.1/plyr_1.8.1.zip"
Content type "application/zip" length 1149242 bytes (1.1 Mb)
opened URL
downloaded 1.1 Mb

package "plyr" successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:/Users/layton/AppData/Local/Temp/Rtmpwr9oHD/downloaded_packages
>
```

I find it convenient to have an RStudio shortcut on my desktop and to delete the shortcuts to R.
