.PHONY: all clean

all: \
	filtered-token-graph-degrees.png \
	unfiltered-token-graph-degrees.png \
	token-graph-in-out-degrees.png

filtered-token-graph-degrees.png:
	gnuplot -c filtered-token-graph-degrees.gp filtered-token-graph-degrees.png

unfiltered-token-graph-degrees.png:
	gnuplot -c unfiltered-token-graph-degrees.gp unfiltered-token-graph-degrees.png

token-graph-in-out-degrees.png:
	gnuplot -c token-graph-in-out-degrees.gp token-graph-in-out-degrees.png

clean:
	rm -f *.png
