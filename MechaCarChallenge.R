# Delivearable 1

# load the dplyr package
library(dplyr)

# Import and read in the MechaCar.csv file as the dataframe
MechaCar_table<- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

# Perform linear regression using the lm() function and pass all the 6 param
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_table)

# Summary statistics for the linear regression(determine the p-value and the r-squared value)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_table))

# Deliverable 2

#Read Suspension_Coil.csv 
SuspensionCoil_table <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors =F)

#Summary Statistics
total_summary<- SuspensionCoil_table %>% summarize(Mean=mean(PSI), Median = median(PSI), Varience= var(PSI), SD =sd(PSI))

#Summary Stats grouped by Manfacturing lot
lot_summary <- SuspensionCoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median = median(PSI), Varience= var(PSI), SD =sd(PSI))

# Deliverable 3: T-Tests on Suspension Coils 
# perform t-tests for all manufacturing lots 
t.test(SuspensionCoil_table$PSI, mu = 1500)

# Perform t-test for lot 1
t.test(subset(SuspensionCoil_table, Manufacturing_Lot == "Lot1")$PSI,mu = 1500)

# Perform t-test for lot 2
t.test(subset(SuspensionCoil_table, Manufacturing_Lot == "Lot2")$PSI,mu = 1500)

# Perform t-test for lot 3
t.test(subset(SuspensionCoil_table, Manufacturing_Lot == "Lot3")$PSI,mu = 1500)