8*10
sqrt(2)
abs(-65)
?sqrt

HoursYear <- 365*24
HoursYear

c(2,3,5,8,13)

Country = c("Brazil","China","India","Switzerland","USA")
LifeExpectancy = c(74,76,65,83,79)
Country
LifeExpectancy
Country[1]
LifeExpectancy[3]
seq(0,100,2)

CountryData = data.frame(Country,LifeExpectancy)
CountryData

CountryData$Population = c(199000, 1390000, 1240000, 7997, 318000)

CountryData

Country = c("Australia", "Greece")
LifeExpectancy = c(82, 81)
Population = c(23050, 11125)
NewCountryData = data.frame(Country, LifeExpectancy, Population)

NewCountryData

AllCountryData = rbind(CountryData, NewCountryData)
AllCountryData

# Change Working Directory
setwd("~/Desktop/AnalyticsEdge")

# Check Working Directory
getwd()

# Read In File and Save to Dataframe "who"
WHO = read.csv("WHO.csv")

# Look at data
str(WHO)

# Get a summary
summary(WHO)

# Create a new dataframe with only countries in EU
WHO_Europe = subset(WHO, Region == "Europe")

# Explore the new dataframe
str(WHO_Europe)

# Export to a CSV
write.csv(WHO_Europe, "Who_Europe.csv")

# See what variables we are working with
ls()

# Remove is rm
rm(WHO_Europe)

# Double check it has been removed
ls()

# Video 5
# Access a specific variable in a data frame using $
WHO$Under15

# Compute mean of this variable
mean(WHO$Under15)

# Compute standard deviation of this variable
sd(WHO$Under15)

# Get summary for this variable
summary(WHO$Under15)

# See what country is the min
which.min(WHO$Under15)

# To see which country is in that row
WHO$Country[86]

# Now see country with max
which.max(WHO$Under15)

# To see which country is in that row
WHO$Country[124]

# Create a scatterplot of GNI versus Fertility Rate
plot(WHO$GNI, WHO$FertilityRate)

# See which countries are outliers
outliers = subset(WHO, GNI > 10000 & FertilityRate > 2.5)

# See how many rows of data are in our subset
nrow(outliers)

# See country names in subset by making a vector of the names of the variables
outliers[c("Country","GNI","FertilityRate")]
