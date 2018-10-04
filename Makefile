all: Montreal
clean: clean-figure clean-script

Montreal: ./Montrealactivityfile.Rmd
	R -e 'library("knitr"); opts_knit$$set(root.dir = "./"); knit2html("./Montrealactivityfile.Rmd","./Montrealactivityfile.html")'

clean-script:
	mv -v README.md README.md.tmp
	rm -rvf ./*.md
	mv -v README.md.tmp README.md

clean-figure:
	rm -rvf ./figure/
