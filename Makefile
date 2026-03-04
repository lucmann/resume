NONSTOP := -
SRC := resume.tex
OBJS := \
	马超-简历.pdf

OPTIONS := -interaction=nonstopmode

.PHONY: all clean $(OBJS)

all: $(OBJS)

# It is a bit confusing the option `-jobname` is actually used to specify
# the resulting PDF filename (without extension)
$(OBJS): %.pdf: $(SRC)
	$(NONSTOP)xelatex $(OPTIONS) -jobname=$(basename $@) $<

clean:
	rm -f $(OBJS) *.aux *.log *.out *.fdb_latexmk
