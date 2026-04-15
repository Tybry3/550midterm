report.html: report.Rmd code/render_report.R cleandata section1 section2 section3 section4
	Rscript code/render_report.R

cleandata: code/00_clean_data.R
	Rscript code/00_clean_data.R

section1: code/01_make_elements_1.R cleandata
	Rscript code/01_make_elements_1.R

section2: code/02_make_elements_2.R cleandata
	Rscript code/02_make_elements_2.R

section3: code/03_make_elements_3.R cleandata
	Rscript code/03_make_elements_3.R

section4: code/04_make_elements_4.R cleandata
	Rscript code/04_make_elements_4.R

.PHONY: clean
clean:
	rm -f output/*.rds && rm -f data/*.rds && rm -f *.html

.PHONY: install
install:
	Rscript -e "renv::restore(prompt = FALSE)"