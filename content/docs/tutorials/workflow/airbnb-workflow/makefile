INPUT_DIR = src/data-preparation
GEN_DATA = gen/data-preparation
GEN_PLOT = gen/plots


all: $(GEN_PLOT)/plot_all.pdf


$(GEN_PLOT)/plot_all.pdf: $(GEN_DATA)/aggregated_df.csv
	R < $(INPUT_DIR)/plot_all.R --save

$(GEN_PLOT)/plot_Amsterdam.pdf: $(GEN_DATA)/pivot_table.csv
	R < $(INPUT_DIR)/plot_Amsterdam.R --save

$(GEN_DATA)/pivot_table.csv: $(GEN_DATA)/aggregated_df.csv
	R < $(INPUT_DIR)/pivot_table.R --save


$(GEN_DATA)/aggregated_df.csv: data/listings.csv data/reviews.csv
	R < $(INPUT_DIR)/clean.R --save

data/listings.csv: 
	R < $(INPUT_DIR)/download.R --save 

data/reviews.csv: 
	R < $(INPUT_DIR)/download.R --save


clean:
	rm -f $(GEN_PLOT)/plot_all.pdf