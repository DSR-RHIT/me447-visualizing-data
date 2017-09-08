
basic R markdown markup tags
----------------------------

See the [R Markdown cheat sheet](https://www.rstudio.com/wp-content/uploads/2016/03/rmarkdown-cheatsheet-2.0.pdf) for a more extensive summary of R Markdown.

#### section headings

<img src="tut-06-images/markup-output-sections.png" width="600">

#### emphasis

<img src="tut-06-images/markup-output-emphasis.png" width="600">

#### itemize

Every line ends with two spaces.
Sub-items begin with 4 spaces.

<img src="tut-06-images/markup-output-itemize.png" width="600">

#### enumerate

Every line ends with two spaces.
Sub-items begin with 4 spaces.

<img src="tut-06-images/markup-output-enumerate.png" width="600">

#### links

Use a plain URL or add a link to a phrase:

<pre class="markdown"><code>http://example.com

[linked phrase](http://example.com)</code></pre>
#### images

Local files

The relative path for images starts in the directory of the Rmd file, in this case, the *practiceR* directory. The path states: go up one level "../", down one level "visuals/", and import the image "an\_image.png".

<pre class="markdown"><code>![alt text](../visuals/an_image.png)
</code></pre>
Images on the web

<pre class="markdown"><code>![alt text](http://example.com/logo.png)
</code></pre>
Next tutorial: [elements of an Rmd report](tut-0604_rmd-elements.md)

------------------------------------------------------------------------

[main page](../README.md)<br> [topics page](../README-by-topic.md)