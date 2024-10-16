NONSTOP := -
SRC := resume.tex
OBJS := \
	Linux-Graphics-Driver-MaChao.pdf \
	Linux-图形驱动开发-马超.pdf

OPTIONS := -interaction=nonstopmode


all: $(OBJS)

$(OBJS): %.pdf: $(SRC)
	$(NONSTOP)xelatex $(OPTIONS) -jobname=$(basename $@) $<

clean:
	rm -f $(OBJS) *.aux *.log *.out

.PHONY: all clean
