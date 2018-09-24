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
