library(markdown)

# To create the two html files for ASJP and Lexibank, we use the same .Rmd file
# but with different parameters. 
# Default values for the parameters 'corpus' (to work with ASJP or Lexibank),
# 'dpi' (the resolution of the figures) and 'precomputed' (to rely or not invisibly 
# on files which contain the results of demanding computations to save time when
# recompiling the .Rmd file) are provided in the header of the .Rmd file, but they
# can be overridden when using the function render() from the markdown package.
# The two calls below result in the two html files.

rmarkdown::render(
  input = "Interjections_statistical_analysis.Rmd",
  output_format = "html_document",
  output_file = "SuppPub5.html",
  params =
    list(
      corpus = "ASJP",
      dpi = 300,
      precomputed = F
    )
)

rmarkdown::render(
  input = "Interjections_statistical_analysis.Rmd",
  output_format = "html_document",
  output_file = "SuppPub6.html",
  params =
    list(
      corpus = "Lexibank",
      dpi = 300,
      precomputed = F
    )
)



