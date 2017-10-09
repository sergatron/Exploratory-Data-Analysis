# *** GGPLOT2 TUTORIAL ***
# TITANIC EXCERCISE

# load libraries
library(ggplot2)


# titanic is avaliable in your workspace
# 1 - Check the structure of titanic
str(titanic)
str(Titanic)
head(Titanic)

# 2 - Use ggplot() for the first instruction
# Plot distibution of sexes by passenger class
ggplot(titanic, aes(x = Pclass, fill = Sex)) + 
  geom_bar(position = 'dodge')

# 3 - Plot 2, add facet_grid() layer
# Add facet grid with 'Survived' layer
ggplot(titanic, aes(x = Pclass, fill = Sex)) + 
  geom_bar(position = 'dodge') + 
  facet_grid(.~Survived) # shows two possibilities of survival, 0 or 1 (no/yes)


# 4 - Define an object for position jitterdodge, to use below
posn.jd <- position_jitterdodge(0.5, 0, 0.6) # dots become more scattered by incrementing
posn.2 <- position_jitterdodge(0.3, 0, 0.4)
posn.3 <- position_jitterdodge(0.1, 0, 0.2)
posn.4 <- position_jitterdodge(0.5, 1, 0.6)


# 5 - Plot 3, but use the position object from instruction 4
# shows which passenger class and sex was more likely to survive
ggplot(titanic, aes(x = Pclass, y = Age, col = Sex)) + 
  geom_point(size = 3, alpha = 0.5, position = posn.jd) + 
  facet_grid(.~Survived)

# change color to Age to show which age group was more likely to survive
ggplot(titanic, aes(x = Pclass, y = Age, col = Sex)) + 
  geom_point(size = 2, alpha = 0.3, position = posn.jd) + 
  facet_grid(.~Survived)


