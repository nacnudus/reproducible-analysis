require(XML)
require(stringr)
require(ggplot2)

# 1. Get package information from CRAN

url <- "http://cran.r-project.org/web/packages/available_packages_by_date.html"
page <- readHTMLTable(url, stringsAsFactors = FALSE)[[1]][, 2:1]
dim(page)  #4469 3
names(page) <- c("Package","Date")
page$Year <- substr(page$Date,1,4)
page <- page[, c(1, 3)]
page <- page[page$Year >= 2008, ]

url2 <- "http://cran.r-project.org/src/contrib/Archive/?C=M;O=A"
page2 <- readHTMLTable(url2, stringsAsFactors = FALSE)[[1]][, 2:3]
page2 <- page2[4:nrow(page2)-1, ]
colnames(page2) <- c("Package","Date")
page2$Package <- str_sub(page2$Package,1,-2)
page2$Year <- substr(page2$Date,8,11)
page2 <- page2[, c("Package", "Year")]

# 2. investigate

# Active not Archived
page3 <- join(page, page2, by = "Package")
colnames(page3)[2:3] <- c("A.Year", "U.Year")
page4 <- page3[is.na(page3$U.Year), ]

# Archived not Active
page5 <- join(page2, page, by = "Package")
colnames(page5)[2:3] <- c("A.Year", "U.Year")
page6 <- page5[is.na(page5$U.Year), ]

barP2 <- ggplot(page2, aes(factor(Year), fill = factor(Year)))
barP2 + geom_bar() +
  labs(title = "Packages by year last updated") +
  ylab("Number of packages") +
  xlab("Year")



barP + geom_line(aes(Year), data = page2)