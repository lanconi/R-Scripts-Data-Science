#==============================================================================================
# R Script for plotting a Sigmoid Function
# The Sigmoid Function is one of the primary Activation Functions used
# in Artificial Neural Networks. See the linkedIn article on Object Oriented Programming
# and modeling Neural Networks, written by Lance Dooley, that talks about using the
# Sigmoid Function for modeling the Activation Function of a logical Neuron unit.
#  https://www.linkedin.com/pulse/object-oriented-programming-neural-networks-part-3-lance-dooley
#
#  In order to use the ggplot command, you must first install and load
#  the tidyverse package.
#  Execute the following 2 commands on the R command prompt if you have
#  not already done so.
#  
#  install.packages(“tidyverse”)
#  library(tidyverse)
#
#==============================================================================================
sigmoidFunction <- function(x) { 1 / (1 + exp(-x))}
boldTitle <- theme(plot.title = element_text(family = "Trebuchet MS", face="bold", size=20))
boldAxis <- theme(axis.title = element_text(family = "Trebuchet MS", face="bold", size=16))
ggplot(data.frame(x = c(-5, 5)), aes(x = x)) + stat_function(fun=sigmoidFunction) +
ggtitle("Sigmoid Function") + labs(x="Input", y="Output") + boldTitle + boldAxis