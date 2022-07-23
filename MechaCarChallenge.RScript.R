#Deliverable 1
library(dplyr)

mechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#perform multiple linear regression with all 6 variables
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_table)

summary(mecha_lm) # use summary to determine p-values and r-squared value for the regression model

#Deliverable 2
#import and read in the suspension coil csv
suspension_coil <- read.csv(file='Suspension_Coil.csv', check.names = F,stringsAsFactors = F)

#create a summary with mean, median, variance, and sd
total_summary <- suspension_coil %>% summarize(mean=mean(PSI), median=median(PSI), vairance=var(PSI), sd=sd(PSI))

#group by the lot
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(mean=mean(PSI), median=median(PSI), vairance=var(PSI), sd=sd(PSI))


#Deliverable 3
# use t.test to determine if the PSI is statistically diff than pop mean of 1500 psi
t.test(suspension_coil$PSI,mu=1500)

#subset for lot 1
lot1_test<-subset(suspension_coil, Manufacturing_Lot=='Lot1')
t.test(lot1_test$PSI,mu=1500)

#use subset in the t.test for simpler coding for lots 2 and 3
t.test(subset(suspension_coil, Manufacturing_Lot=='Lot2')$PSI,mu=1500)

t.test(subset(suspension_coil, Manufacturing_Lot=='Lot3')$PSI,mu=1500)
