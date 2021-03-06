# This script builds both the HTML and PDF versions of your CV

# If you wanted to speed up rendering for googlesheets driven CVs you could use
# this script to cache a version of the CV_Printer class with data already
# loaded and load the cached version in the .Rmd instead of re-fetching it twice
# for the HTML and PDF rendering. This exercise is left to the reader.

# Knit the HTML version
rmarkdown::render("cv.rmd",
                  params = list(pdf_mode = TRUE),
                  output_file = "cv.html")
# Try parameters next time 3 soft and 3 tech
rmarkdown::render("cv.rmd",
                  params = list(pdf_mode = TRUE,
                                soft1="Smart"),
                  output_file = "cv.html")

# Knit the PDF version to temporary html location
# tmp_html_cv_loc <- fs::file_temp(ext = ".html")
rmarkdown::render("cv.rmd",
                  params = list(pdf_mode = FALSE),
                  output_file = "cv_pdf.html")

# Convert to PDF using Pagedown
# pagedown::chrome_print(input = tmp_html_cv_loc,
#                        output = "cv.pdf")
