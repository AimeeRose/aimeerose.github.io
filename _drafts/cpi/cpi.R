library(xlsx)
library(ggplot2)
library(quantmod)
library(lubridate)

# Load the files
cpi <- read.xlsx('~/Downloads/SeriesReport-20150221163618.xlsx', 1, startRow = 11)
trans <- read.xlsx('~/Downloads/SeriesReport-20150221155717.xlsx', 1, startRow = 11)
air <- read.csv('~/Downloads/AnnualFares1995-2014.csv', skip = 2, nrows = 20, stringsAsFactors = FALSE)
gas <- read.csv('~/Downloads/DOE-RWTC (1).csv')

# Itemize & Clean
cpi$item = 'All items'
trans$item = 'Transportation'
air$item = 'Air'
gas$item = 'Gas'
air[20,]$Year = 2014
gas$Date <- strptime(gas$Date, format = "%Y-%m-%d")
gas$Year <- year(gas$Date)

# Calculate Year Over Year
trans$yearOverYear = Delt(trans$Annual, k = 1)[,1] * 100
cpi$yearOverYear = Delt(cpi$Annual, k = 1)[,1] * 100
air$yearOverYear = air$Current.dollars.percent.change
gas$yearOverYear = Delt(gas$Value, k = 1)[,1] * 100

# Calculate baseIndex for cummulative change
#
baseIndex <- function(df) {
  index = subset(df, df$Year == 1995)$Annual
  return(index)
}

trans$baseIndex <- baseIndex(trans)
cpi$baseIndex <- baseIndex(cpi)
gas$baseIndex <- subset(gas, gas$Year == 1995)$Value

# Calculate cummulative
#
trans$cummulative <- (trans$Annual - trans$baseIndex)/trans$baseIndex * 100
air$cummulative <- air$Cummulative...change.from.1995
cpi$cummulative <- (cpi$Annual - cpi$baseIndex)/cpi$baseIndex * 100
gas$cummulative <- (gas$Value - gas$baseIndex)/gas$baseIndex * 100

columns <- c('Year', 'item', 'yearOverYear', 'cummulative')
selectColumns <- function(df) {
  subset(df, select = columns)
}

all <- na.omit(rbind(selectColumns(cpi), selectColumns(air), selectColumns(gas)))

all$Year = as.numeric(all$Year)

ggplot(data = all, aes(x = Year, y = cummulative, color = item)) +
  geom_line() +
  scale_x_continuous("Year", breaks = seq(1996, 2014, 2)) +
  labs(title = "Cummulative Change in Price Index since 1995", y = "Percent change") +
  geom_point(size = 16, color = "white") +
  geom_text(aes(label = paste0(round(cummulative, digits = 1), "%")), size = 3) 
