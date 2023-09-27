#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#                                                                                ##
# R Crash Course                                                                 ##
# Data are current as of 2023-09-25                                              ##
# Data source: Abigail Mish                                                      ##
# R code prepared by Abigail Mish                                                ##
# Last updated 2023-09-26                                                        ##
#                                                                                ##
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# SUMMARY:


# Required Files (check that script is loading latest version):
# FILE.csv

# Associated Scripts:
# FILE.R

# TO DO 

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# TABLE OF CONTENTS                                                            ####
#                                                                                 +
# RECENT CHANGES TO SCRIPT                                                        +
# LOAD PACKAGES                                                                   +
# READ IN AND PREPARE DATA                                                        +
# MANIPULATE DATA                                                                 +
#                                                                                 +
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# RECENT CHANGES TO SCRIPT                                                    ####
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# LOAD PACKAGES                                                                ####
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

library(tidyverse)
library(viridis)

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# READ IN AND PREPARE DATA                                                     ####
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

scorpion_lengths <- read_csv("data/scorpion_lengths.csv")

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# MANIPULATE DATA                                                              ####
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

scorpion_lengths$kitchen # Method to see column data
scorpion_lengths$bedroom

help(mean)

xm <- mean(scorpion_lengths$kitchen) # Naming Kitchen mean object (no reason to)

mean(scorpion_lengths$kitchen,na.rm = FALSE) # Including NA to find mean

mean(scorpion_lengths$bedroom) # Including NA to find mean 

sd(scorpion_lengths$bedroom) # Find sd for bedroom
sd(scorpion_lengths$kitchen,na.rm = TRUE) # Not including NA

length(scorpion_lengths$bedroom) #length for bedroom
length(scorpion_lengths$kitchen,na.rm = FALSE) #length can't have 2 arguments 

help(length) #Length can't have 2 arguments

length(scorpion_lengths$kitchen) # changing kitchen to one argument

help(sd) # to see default argument 

??ttest #another way to ask for help but t-est is t.test

help(t.test) #correct way to ask for help w/ t-test

t.test(scorpion_lengths$bedroom, scorpion_lengths$kitchen) # Trying with $, worked
t.test(scorpion_lengths$bedroom, kitchen) #trying w/out $, did not work 

bromeliads <- read_csv("~/Documents/git/Rintroduction/WorkshopData/bromeliads.csv")
str(bromeliads)

help(aov)

blueberries <-aov(mosquitoes~location, bromeliads) # when using aov, create new object

summary(bromeliads) #testing, not what I wanted 
summary(blueberries) #What I wanted, complete summary 

help(TukeyHSD) #Getting help with Tukey HSD which will help with ggboxplot 

TukeyHSD(blueberries) #telling the code what object to use 

help(boxplot)

boxplot(mosquitoes~location, data=bromeliads) #showing what we are comparing on x and y 
boxplot(mosquitoes~location, bromeliads) #can be done by putting data or not 

help(ggplot)

ggplot(bromeliads, aes(x=location, y=mosquitoes, fill=location))+ #Starting the code for gg plot
  geom_point()+ #plotting the points on the graph listed above 
  geom_boxplot()+ #creating the box plot 
  theme_linedraw()+ #specific themes you can choose 
  labs(x="Location", y="Mosquitoes")+ #fixing the labels 
  scale_fill_viridis(discrete=TRUE, begin=0.3, end=1, option="G") #option is color (a-J) type of graph
# Begin and end must be in 0-1.(color scale)

############### SUBSECTION HERE####
#<<<<<<<<<<<<<<<<<<<<<<<<<<END OF SCRIPT>>>>>>>>>>>>>>>>>>>>>>>>#

# SCRATCH PAD ####

x.values <-c(1:10)
x.values <- x.values+2
cookies <-"I like cookies"

