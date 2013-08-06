require(reshape2)
require(ggplot2)
x <- read.csv("BoP.csv", header = TRUE)
colnames(x) <- c("count", "hour", "weekend", "fatal", "alcohol", "urban")
x$count <- as.numeric(x$count)
x$hour <- as.numeric(x$hour)
y <- dcast(x, hour + weekend + fatal + alcohol + urban ~ ., fun.aggregate = sum, value.var = "count")
colnames(y)[6] <- "count"
y <- y[rep(row.names(y), y$count), 1:5]
ggplot(y, aes(hour, group = weekend, fill = weekend)) + 
  geom_density(alpha = 0.2) + 
  facet_grid(alcohol ~ urban, margins = TRUE)