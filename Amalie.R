setwd("~/Desktop/Bachelor thesis/Data analysis")
a = read.csv("~/Desktop/Bachelor thesis/Data analysis/a (2018-10-16 11-59-07).csv", sep=";")
a$picgender=substr(a$img,1,1)
a$robot=substr(a$img,2,3)
a$picnumber=substr(a$img,4,5)

#Plot for robot no. 05
p1 = scatter.smooth(a$picnumber[a$robot == "05"],a$response[a$robot == "05"])

#Plot for male robot no. 02
p2 = scatter.smooth(a$picnumber[a$robot == "02" & a$picgender == "m"],a$response[a$robot == "02" & a$picgender == "m"])

#Plot for female robot no. 02
p3 = scatter.smooth(a$picnumber[a$robot == "02" & a$picgender == "f"],a$response[a$robot == "02" & a$picgender == "f"])

#Plot for robot no. 01
p4 = scatter.smooth(a$picnumber[a$robot == "01"],a$response[a$robot == "01"])
