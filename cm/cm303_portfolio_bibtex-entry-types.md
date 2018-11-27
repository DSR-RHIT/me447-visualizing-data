
<br>

<img src="../resources/images/header-bibtex.png" width="30%" />

<small> BiBTeX logo by Grendelkhan, own work, public domain,
[Wikimedia](https://commons.wikimedia.org/w/index.php?curid=1299548)
</small>

[common entries](#common-entries)  
[entry types](#entry-types)  
[field types](#field-types)

## common entries

These BiBTeX entry types are set up for quick copy and paste into your
.bib file using only the required fields.

  - I’ve included the `misc` entry type a website reference
  - URLs can be included using the `note` field for articles and books

<!-- end list -->

    @article{AuthorYYYY,
      author    = {First I. Last and First I. Last},
      title     = {{Title}},
      journal   = {Name},
      year      = {YYYY},
      volume    = {N},
    }
    
    @article{AuthorYYYY,
      author    = {First I. Last and First I. Last},
      title     = {{Title}},
      journal   = {Name},
      year      = {YYYY},
      volume    = {N},
      note      = {http://long-url-name-here},
    }
    
    @book{AuthorYYYY,
      author    = {First I. Last and First I. Last},
      title     = {{Title}},
      publisher = {Publisher},
      year      = {YYYY},
      address   = {City, State},
    }
    
    @inbook{AuthorYYYY,
      author    = {First I. Last},
      title     = {{Title}},
      chapter   = {N}, 
      publisher = {Publisher},
      year      = {YYYY},
    }
    
    @inproceedings{AuthorYYYY,
      author    = {First I. Last},
      title     = {{Title}},
      booktitle = {N}, 
      year      = {YYYY},
    }
    
    @misc{WebReference,
      author    = {First I. Last},
      title     = {{Title}},
      month     = {Month}, 
      year      = {YYYY},
      howpublished = {http://long-url-name-here}, 
    }

## entry types

| Entry type    | Fields                                                                                                                                                      |
| :------------ | :---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| article       | required — author, title, journal, year, volume<br>optional — number, pages, month, doi, note, key                                                          |
| book          | required — author or editor, title, publisher, year<br>optional — volume, number, series, address, edition, month, note, key, url                           |
| booklet       | required — title<br>optional — author, howpublished, address, month, year, note, key                                                                        |
| inbook        | required — author or editor, title, chapter and/or pages, publisher, year<br>optional — volume/number, series, type, address, edition, month, note, key     |
| incollection  | required — author, title, booktitle, publisher, year<br>optional — editor, volume, number, series, type, chapter, pages, address, edition, month, note, key |
| inproceedings | required — author, title, booktitle, year<br>optional — editor, volume/number, series, pages, address, month, organization, publisher, note, key            |
| manual        | required — title<br>optional — author, organization, address, edition, month, year, note, key                                                               |
| mastersthesis | required — author, title, school, year<br>optional — type, address, month, note, key                                                                        |
| misc          | required — none<br>optional — author, title, howpublished, month, year, url, note, key                                                                      |
| phdthesis     | required — author, title, school, year<br>optional — type, address, month, note, key                                                                        |
| proceedings   | required — title, year<br>optional — editor, volume, number, series, address, month, publisher, organization, note, key                                     |
| techreport    | required — author, title, institution, year<br>optional — type, number, address, month, note, key                                                           |
| unpublished   | required — author, title, note<br>optional — month, year, key                                                                                               |

## field types

| field type   | description                                                                                                                                            |
| :----------- | :----------------------------------------------------------------------------------------------------------------------------------------------------- |
| address      | of publisher, usually just the city                                                                                                                    |
| author       | name(s) with more than one author separated by *and*                                                                                                   |
| booktitle    | if only part of a book is being cited                                                                                                                  |
| chapter      | number                                                                                                                                                 |
| doi          | digital object identifier                                                                                                                              |
| edition      | in long form such as first or second                                                                                                                   |
| howpublished | if non-standard                                                                                                                                        |
| institution  | not necessarily the publisher                                                                                                                          |
| journal      | or magazine the work was published in                                                                                                                  |
| key          | hidden field used for specifying or overriding the alphabetical order of entries (when the author and editor fields are missing)                       |
| month        | of publication                                                                                                                                         |
| note         | miscellaneous information                                                                                                                              |
| number       | the issue number                                                                                                                                       |
| organization | sponsor of a conference or a manual                                                                                                                    |
| pages        | numbers separated by commas or an en-dash                                                                                                              |
| publisher    | name                                                                                                                                                   |
| school       | institution where the thesis was written                                                                                                               |
| series       | name of the series of books of which this one is part                                                                                                  |
| title        | of the work                                                                                                                                            |
| type         | overrides the default publication type, e.g., ‘Research Note’ for techreport, ‘{PhD} dissertation’ for phdthesis, ‘Section’ for inbook or incollection |
| volume       | number                                                                                                                                                 |
| year         | published or created                                                                                                                                   |

-----

[Calendar](../README.md#calendar)  
[Index](../README.md#index)
