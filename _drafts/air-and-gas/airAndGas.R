library(ggplot2)
library(quantmod)
library(lubridate)

setwd('~/Projects/aimeerose.github.io/_drafts/air-and-gas/')

air <- read.csv('NationalLevelDomesticAverageFareSeries_20150222.csv', stringsAsFactors = FALSE)
gas <- read.csv('quandl-wti-crude-oil-quarterly.csv', stringsAsFactors = FALSE)

air <- air[,0:4]
air$Year <- as.numeric(air$Year)
air$Quarter <- air$Year + (0.1 * air$Quarter)
air <- na.omit(air)
names(air) <- c('Year', 'Quarter', 'AverageCurrentDollars', 'AverageAdjustedDollars')
gas$Date <- strptime(gas$Date, "%m/%d/%y")
gas$Quarter <- year(gas$Date) + (0.1 * quarter(gas$Date))

# Calculate baseIndex for cummulative change
#
baseIndex <- function(df) {
  index = subset(df, df$Quarter == 1995.1)
  return(index)
}

air$baseIndex <- baseIndex(air)$AverageCurrentDollars
gas$baseIndex <- baseIndex(gas)$Value

air$cummulative <- (air$AverageCurrentDollars - air$baseIndex)/air$baseIndex * 100
gas$cummulative <- (gas$Value - gas$baseIndex)/gas$baseIndex * 100

gas <- gas[with(gas, order(Quarter)), ]
head(gas)
head(air)

# Year over year change
air$quarterOverQuarterPercentChange = Delt(air$AverageCurrentDollars, k = 1)[,1] * 100
gas$quarterOverQuarterPercentChange = Delt(gas$Value, k = 1)[,1] * 100

gas <- na.omit(gas)

ggplot(data = NULL) +
  geom_line(aes(x = air$Quarter, y = air$quarterOverQuarterPercentChange, colour = "air")) + 
  geom_line(aes(x = gas$Quarter, y = gas$quarterOverQuarterPercentChange, colour = "gas"))

nrow(gas)

ggplot(data = NULL) +
  geom_line(aes(x = air$Quarter, y = air$cummulative, colour = "air")) + 
  geom_line(aes(x = gas$Quarter, y = gas$cummulative, colour = "gas"))

bothChanges <- merge(x = gas, y = air, by = "Quarter")
selectColumns = c('Quarter',
                  'quarterOverQuarterPercentChange.x',
                  'quarterOverQuarterPercentChange.y',
                  'cummulative.x',
                  'cummulative.y')

bothChanges <- subset(bothChanges, select = selectColumns)
names(bothChanges) <- c('Quarter', 'quarter_change_gas', 'quarter_change_air', 'cummulative_change_gas', 'cummulative_change_air')
head(bothChanges)
bothChanges <- na.omit(bothChanges)

ggplot(data = bothChanges, aes(x = quarter_change_gas, y = quarter_change_air)) +
  geom_point()

ols <- lm(bothChanges$quarter_change_air ~ bothChanges$quarter_change_gas)
summary(ols)

#ggplot(data = bothChanges, aes(x = cummulative_change_gas, y = cummulative_change_air)) +
#  geom_point()
#ols <- lm(bothChanges$cummulative_change_gas ~ bothChanges$cummulative_change_air)
#summary(ols)

# See if anything is more interesting recently

# recentChanges <- subset(bothChanges, Quarter > 2008)

# ols <- lm(recentChanges$quarter_change_air ~ recentChanges$quarter_change_gas)
# summary(ols)

