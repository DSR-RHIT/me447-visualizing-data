
<br>

<img src="../resources/cm303_header.png" width="50%" /> <small> <br>
<i>BiBTeX logo</i> by Grendelkhan, own work, public domain,
<a href="https://commons.wikimedia.org/w/index.php?curid=1299548">Wikimedia</a>
<br> </small>

## contents

[prerequisites](#prerequisites)  
[summary](#summary)  
[notes on usage](#notes-on-usage)  
[articles](#articles)  
[books](#books)  
[in a book](#in-a-book)  
[in proceedings](#in-proceedings)  
[web pages](#web-pages)  
[software](#software)  
[references](#references)

## prerequisites

  - Start every work session by launching `portfolio.Rproj`  
  - Your [project directory
    structure](cm501-proj-m-manage-files.md#plan-the-directory-structure)
    satisfies the course requirements

## summary

There are many standard BiBTeX entry types, but the ones listed here
will probably meet most of your needs. These listings have been tested
in our Rmd to github document environment with both default formatting
and a specified CSL file.

    @article{Last+Last:YYYY,
      author  = {First Last and First Last},
      year    = {YYYY},
      title   = {{Title of the article}},
      journal = {Name of the publication},
      volume  = {n},
      number  = {n},
      pages   = {n--n},
      url     = {URL}
    }
    
    @book{Last:YYYY,
      author    = {First Last},
      year      = {YYYY},
      title     = {{Title}},
      edition   = {n}, 
      publisher = {Publisher},
      address   = {City, State},
      url       = {URL}
    }
    
    @inbook{Last:YYYY:Ch.N,
      author    = {First Last},
      year      = {YYYY},
      title     = {{Title of section or chapter}},
      booktitle = {{Book title with edition number if any}},
      publisher = {Publisher},
      address   = {City},
      pages     = {n--n},
      url       = {URL},
    }
    
    @inproceedings{Last+Last+Last:YYYY,
      author    = {First Last and First Last and First Last},
      year      = {YYYY},
      title     = {{Title of article}},
      booktitle = {{Conference name}},
      publisher = {Publisher},
      address   = {City},
      pages     = {n--n},
      url       = {URL},
    }
    
    @misc{Last:YYYY,
      author = {First Last},
      year   = {YYYY},
      title  = {{Title}},
      url    = {URL}
    }
    
    @manual{Last:YYYY,
      author       = {First Last},
      year         = {YYYY},
      title        = {{Title of software}},
      organization = {Organization},
      address      = {City},
      url          = {URL}
    }

<br> <a href="#top">▲ top of page</a>

## notes on usage

  - Multiple author names in the author field are separated by `and`.
  - Author middle initials are optional
  - If you use an ampersand in a field, escape it with a backslash, for
    example, `booktitle = {{Annual Conference \& Exposition}}`
  - Unused fields can be deleted or left blank, for example, `pages =
    {}`
  - Double braces preserve capitalization, especially useful in titles,
    for example, `title = {{Cruel pies: The inhumanity of technical
    illustrations}}`
  - In the page field, separate page numbers with an en-dash, for
    example, `pages = {265--274}`.
  - Braces are not required around integer values in fields, for
    example, `year = 2001` and `year = {2001}` are equivalent.
  - Use `@misc` for online resources  
  - Use `@manual` for software references
  - All entry types shown here accept a `url` field but not a `urldate`
    field, thus there is no obvious approach to including a retrieved by
    date for online resources.  
  - A tilde is a non-breaking space, e.g., `{R~package version~0.2.0}`

<br> <a href="#top">▲ top of page</a>

## articles

Cite an article in a journal or magazine.

  - Citation markup `[@Dragga+Voss:2001]` appears in document as (Dragga
    and Voss, [2001](#ref-Dragga+Voss:2001))
  - Sample entry in the .bib file

<!-- end list -->

    @article{Dragga+Voss:2001,
      author  = {Sam Dragga and Dan Voss},
      year    = {2001},
      title   = {{Cruel pies: The inhumanity of technical illustrations}},
      journal = {Technical Communication},
      volume  = {48},
      number  = {3},
      pages   = {265--274},
      url     = {},
    }

<br> <a href="#top">▲ top of page</a>

## books

Cite a book with an explicit publisher.

  - Citation markup `[@Cleveland:1994]` appears in document as
    (Cleveland, [1994](#ref-Cleveland:1994))
  - Sample entry in the .bib file

<!-- end list -->

    @book{Cleveland:1994,
      author    = {William S. Cleveland},
      year      = {1994},
      title     = {{The Elements of Graphing Data}},
      edition   = {},
      publisher = {Hobart Press},
      address   = {Summit, NJ},
      url       = {},
    }

<br> <a href="#top">▲ top of page</a>

## in a book

Cite a part of a book such as a chapter or section.

  - Citation markup `[@Few:2012:Ch.3]` appears in document as (Few,
    [2012](#ref-Few:2012:Ch.3))
  - Conventionally, an `inbook` entry accepts an `edition` field, but
    not in our Rmd to github document environment. A workaround is to
    include the edition in the `booktitle` field.
  - Sample entry in the .bib file

<!-- end list -->

    @inbook{Few:2012:Ch.3,
      author    = {Stephen Few},
      year      = {2012},
      title     = {{Differing roles of tables and graphs}},
      booktitle = {{Show me the numbers: Designing tables and graphs to enlighten, 2/e}},
      publisher = {Analytics Press},
      address   = {Burlingame, CA},
      pages     = {39--51},
      url       = {},
    }

<br> <a href="#top">▲ top of page</a>

## in proceedings

Cite an article in a conference proceedings.

  - Citation markup `[@Layton+Lord+Ohland:2009]` appears in document as
    (Layton and others, [2009](#ref-Layton+Lord+Ohland:2009))
  - Sample entry in the .bib file

<!-- end list -->

    @inproceedings{Layton+Lord+Ohland:2009,
      author    = {Richard Layton and Susan Lord and Matthew Ohland},
      year      = {2009},
      title     = {{Reasoning about categorical data: Multiway plots as useful research tools}},
      booktitle = {{Annual Conference \& Exposition}},
      publisher = {ASEE},
      address   = {Austin, TX},
      pages     = {},
      url       = {https://peer.asee.org/4683},
    }

<br> <a href="#top">▲ top of page</a>

## web pages

Cite sources available only as web pages

  - Citation markup `[@Bryan:2017]` appears in document as (Bryan,
    [2017](#ref-Bryan:2017))
  - Sample entry in the .bib file

<!-- end list -->

    @misc{Bryan:2017,
      author = {Jenny Bryan},
      year   = {2017},
      title  = {{LOTR repository}},
      url    = {https://github.com/jennybc/lotr},
    }

<br> <a href="#top">▲ top of page</a>

## software

Cite R packages

  - Citation markup `[@docxtools:2018]` appears in document as (Layton,
    [2018](#ref-docxtools:2018))
  - Conventionally, the `manual` entry accepts a `note` field for the R
    package version number, but not in our Rmd to github document
    environment. A workaround is to use the `address` field.
  - Sample entry in the .bib file

<!-- end list -->

    @manual{docxtools:2018,
      author       = {Richard Layton},
      year         = {2018},
      title        = {{docxtools: Tools for R Markdown to Docx Documents}},
      organization = {},
      address      = {R~package version~0.2.0},
      url          = {https://graphdr.github.io/docxtools/},
    }

Cite software in general

  - Citation markup `[@RStudio:2016]` appears in document as (RStudio
    Team, [2016](#ref-RStudio:2016))
  - Sample entry in the .bib file

<!-- end list -->

    @manual{RStudio:2016,
      author       = {{RStudio Team}},
      year         = {2016},
      title        = {{RStudio: Integrated Development Environment for R}},
      organization = {RStudio, Inc.},
      address      = {Boston, MA},
      url          = {http://www.rstudio.com/},
      }

## references

<div id="refs">

<div id="ref-Bryan:2017">

Bryan J (2017) LOTR repository. <https://github.com/jennybc/lotr>

</div>

<div id="ref-Cleveland:1994">

Cleveland WS (1994) *The Elements of Graphing Data.* Hobart Press,
Summit, NJ

</div>

<div id="ref-Dragga+Voss:2001">

Dragga S and Voss D (2001) Cruel pies: The inhumanity of technical
illustrations. *Technical Communication* **48**(3), 265–274

</div>

<div id="ref-Few:2012:Ch.3">

Few S (2012) Differing roles of tables and graphs. *Show me the numbers:
Designing tables and graphs to enlighten, 2/e*. Analytics Press,
Burlingame, CA, 39–51

</div>

<div id="ref-docxtools:2018">

Layton R (2018) *docxtools: Tools for R Markdown to Docx Documents.*
R package version 0.2.0 <https://graphdr.github.io/docxtools/>

</div>

<div id="ref-Layton+Lord+Ohland:2009">

Layton R, Lord S and Ohland M (2009) Reasoning about categorical data:
Multiway plots as useful research tools. *Annual Conference &
Exposition*. ASEE, Austin, TX <https://peer.asee.org/4683>

</div>

<div id="ref-RStudio:2016">

RStudio Team (2016) *RStudio: Integrated Development Environment for R.*
RStudio, Inc., Boston, MA <http://www.rstudio.com/>

</div>

</div>

***
<a href="#top">&#9650; top of page</a>    
[&#9665; calendar](../README.md#calendar)    
[&#9665; index](../README.md#index)
