report_standard.html: report.Rmd code/render_report_standard.R
	Rscript code/render_report_standard.R

report_intervention.html: report.Rmd code/render_report_intervention.R
	Rscript code/render_report_intervention.R

.PHONY: clean
clean:
	rm -f output/*.rds && rm -f data/*.rds && rm -f *.html