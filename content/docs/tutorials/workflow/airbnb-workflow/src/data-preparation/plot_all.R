library(dplyr)

# import the data from `gen/data-preparation/aggregated_df.csv`
df <- read.csv("../../gen/data-preparation/aggregated_df.csv")

# convert the `date` column into date format.
df$date <- as.Date(df$date)
df_pivot$date <- as.Date(df_pivot$date)

# group by date and calculate the sum of all reviews across neighbourhoods.
df_groupby <- df %>% group_by(date) %>% summarise(num_reviews = sum(num_reviews))

# plot the chart and store the visualisation.
plot(x = df_groupby$date, 
     y = df_groupby$num_reviews, 
     type = "l", 
     xlab = "",
     ylab = "Total number of reviews", 
     main = "Effect of COVID-19 pandemic on Airbnb review count")
dev.print(pdf, "../../gen/analysis/plot_all.pdf")


