#! user/bin/env make

Assignment6.html: all.txt ViEWSMapGridCell.png 
	pandoc --metadata title="Not so accurate: Why accuracy is poor performance metric for computational social science applications" -s all.txt --mathjax -f markdown+tex_math_dollars -t html -o Assignment6.html

files:  preamble.txt litReview.txt results.txt approach.txt conclusion.txt 
	for file in  preamble.txt litReview.txt  approach.txt results.txt conclusion.txt; do echo " " >> $$file; done

all.txt: files preamble.txt litReview.txt results.txt approach.txt conclusion.txt
	cat preamble.txt litReview.txt approach.txt results.txt conclusion.txt >> all.txt

.PHONY: clean

clean:
	rm Assignment6.html
	rm all.txt
