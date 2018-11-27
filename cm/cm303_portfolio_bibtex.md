
<br>

<img src="../resources/images/header-bibtex.png" width="30%" />

<small> BiBTeX logo by Grendelkhan, own work, public domain,
[Wikimedia](https://commons.wikimedia.org/w/index.php?curid=1299548)
</small>

[introduction](#introduction)  
[article](#article)  
[book](#book)  
[in book](#in-book)  
[in proceedings](#in-proceedings)  
[online resource](#online-resource)  
[R package](#r-package)  
[software](#software)  
[sample references](#sample-references)  
[copy and paste collection](#copy-and-paste-collection)

## introduction

There are many standard BiBTeX entry types, but the 6 shown here will
generally meet most of your needs.

  - A field can be empty and will not affect the output, for example,
    `pages = {},`
  - My labelling scheme is `Last.YYYY` and its derivatives such as
    `Last.Last.Last.YYYY` or `Last.YYYY.ChN`.
  - Multiple author names are separated by `and`.
  - If you use an ampersand in a field, escape it with a backslash, for
    example, `booktitle = {{Annual Conference \& Exposition}}`
  - Use `@misc` for Internet sources
  - Use `@manual` for software references

## article

  - Sample .bib file entry

<!-- end list -->

    @article{Dragga.Voss.2001,
      author  = {Sam Dragga and Dan Voss},
      year    = {2001},
      title   = {{Cruel pies: The inhumanity of technical illustrations}},
      journal = {Technical Communication},
      volume  = {48},
      number  = {3},
      pages   = {265--274},
      url     = {},
    }

  - Citation markup `[@Dragga.Voss.2001]`
  - Citation in document (Dragga and Voss,
    [2001](#ref-Dragga.Voss.2001))
  - Formatted reference in [sample references](#sample-references) below

## book

  - Sample .bib file entry

<!-- end list -->

    @book{Cleveland.1994,
      author    = {William S. Cleveland},
      year      = {1994},
      title     = {{The Elements of Graphing Data}},
      edition   = {},
      publisher = {Hobart Press},
      address   = {Summit, NJ},
      url       = {},
    }

  - Citation markup `[@Cleveland.1994]`
  - Citation in document (Cleveland, [1994](#ref-Cleveland.1994))
  - Formatted reference in [sample references](#sample-references) below

## in book

  - Sample .bib file entry

<!-- end list -->

    @inbook{Doumont.2009.Ch.4,
      author    = {Jean-Luc Doumont},
      year      = {2009},
      title     = {{Designing the graph}},
      booktitle = {{Trees, maps, and theorems: Effective communication for rational minds}},
      publisher = {Principiae},
      address   = {Kraainem, Belgium},
      pages     = {133--143},
      url       = {http://www.treesmapsandtheorems.com/},
    }

  - Citation markup `[@Doumont.2009.Ch.4]`
  - Citation in document (Doumont, [2009](#ref-Doumont.2009.Ch.4))
  - Formatted reference in [sample references](#sample-references) below

## in proceedings

  - Sample .bib file entry

<!-- end list -->

    @inproceedings{Layton.Lord.Ohland.2009,
      author    = {Richard Layton and Susan Lord and Matthew Ohland},
      year      = {2009},
      title     = {{Reasoning about categorical data: Multiway plots as useful research tools}},
      booktitle = {{Annual Conference \& Exposition}},
      publisher = {ASEE},
      address   = {Austin, TX},
      pages     = {},
      url       = {https://peer.asee.org/4683},
    }

  - Citation markup `[@Layton.Lord.Ohland.2009]`
  - Citation in document (Layton and others,
    [2009](#ref-Layton.Lord.Ohland.2009))
  - Formatted reference in [sample references](#sample-references) below

## online resource

  - Sample .bib file entry

<!-- end list -->

    @misc{Bryan.2017,
      author = {Jenny Bryan},
      year   = {2017},
      title  = {{LOTR repository}},
      url    = {https://github.com/jennybc/lotr},
    }

  - Citation markup `[@Bryan.2017]`
  - Citation in document (Bryan, [2017](#ref-Bryan.2017))
  - Formatted reference in [sample references](#sample-references) below

## R package

  - Sample .bib file entry  
  - Using the `address` field to cite the R package version number.

<!-- end list -->

    @manual{docxtools.2018,
      author       = {Richard Layton},
      year         = {2018},
      title        = {{docxtools: Tools for R Markdown to Docx Documents}},
      organization = {},
      address      = {R package version 0.2.0},
      url          = {https://graphdr.github.io/docxtools/},
    }

  - Citation markup `[@docxtools.2018]`
  - Citation in document (Layton, [2018](#ref-docxtools.2018))
  - Formatted reference in [sample references](#sample-references) below

## software

  - Sample .bib file entry

<!-- end list -->

    @manual{RStudio.2016,
      author       = {{RStudio Team}},
      year         = {2016},
      title        = {{RStudio: Integrated Development Environment for R}},
      organization = {RStudio, Inc.},
      address      = {Boston, MA},
      url          = {http://www.rstudio.com/},
      }

  - Citation markup `[@RStudio.2016]`
  - Citation in document (RStudio Team, [2016](#ref-RStudio.2016))
  - Formatted reference in [sample references](#sample-references) below

## sample references

<div id="refs">

<div id="ref-Bryan.2017">

Bryan J (2017) LOTR repository. <https://github.com/jennybc/lotr>

</div>

<div id="ref-Cleveland.1994">

Cleveland WS (1994) *The Elements of Graphing Data.* Hobart Press,
Summit, NJ

</div>

<div id="ref-Doumont.2009.Ch.4">

Doumont J-L (2009) Designing the graph. *Trees, maps, and theorems:
Effective communication for rational minds*. Principiae, Kraainem,
Belgium, 133–143 <http://www.treesmapsandtheorems.com/>

</div>

<div id="ref-Dragga.Voss.2001">

Dragga S and Voss D (2001) Cruel pies: The inhumanity of technical
illustrations. *Technical Communication* **48**(3), 265–274

</div>

<div id="ref-docxtools.2018">

Layton R (2018) *docxtools: Tools for R Markdown to Docx Documents.* R
package version 0.2.0 <https://graphdr.github.io/docxtools/>

</div>

<div id="ref-Layton.Lord.Ohland.2009">

Layton R, Lord S and Ohland M (2009) Reasoning about categorical data:
Multiway plots as useful research tools. *Annual Conference &
Exposition*. ASEE, Austin, TX <https://peer.asee.org/4683>

</div>

<div id="ref-RStudio.2016">

RStudio Team (2016) *RStudio: Integrated Development Environment for R.*
RStudio, Inc., Boston, MA <http://www.rstudio.com/>

</div>

</div>

## copy and paste collection

These BiBTeX entry types are set up for quick copy and paste into your
.bib file using the fields that work with R Markdown and
`github_document` output.

    @article{Last.Last.YYYY,
      author    = {First Last and First M. Last},
      year      = {YYYY},
      title     = {{Title of the article}},
      journal   = {Name of the publication},
      volume    = {n},
      number    = {n},
      pages     = {n--n},
      url       = {URL}
    }
    
    @book{Last.YYYY,
      author    = {First M. Last},
      year      = {YYYY},
      title     = {{Title}},
      edition   = {n}, 
      publisher = {Publisher},
      address   = {City, State},
      url       = {URL}
    }
    
    @inbook{Last.YYYY.ChN,
      author    = {First Last},
      year      = {YYYY},
      title     = {{Title of section or chapter}},
      booktitle = {{Book title with edition number if any}},
      publisher = {Publisher},
      address   = {City},
      pages     = {n--n},
      url       = {URL},
    }
    
    @inproceedings{Last.Last.Last.YYYY,
      author    = {First Last and First Last and First Last},
      year      = {YYYY},
      title     = {{Title of article}},
      booktitle = {{Conference name}},
      publisher = {Publisher},
      address   = {City},
      pages     = {n--n},
      url       = {URL},
    }
    
    @misc{Last.YYYY,
      author = {First Last},
      year   = {YYYY},
      title  = {{Title}},
      url    = {URL}
    }
    
    @manual{Last.YYYY,
      author       = {First Last},
      year         = {YYYY},
      title        = {{Title of software}},
      organization = {Organization},
      address      = {City},
      url          = {URL}
    }

-----

[Calendar](../README.md#calendar)  
[Index](../README.md#index)
