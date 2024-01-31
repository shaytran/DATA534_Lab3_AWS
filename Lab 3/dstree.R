library(tree)

# Read in the .csv
datasal <- read.csv("ds.csv", stringsAsFactors=TRUE)

# Ensure that totalyearlycompensation is a numeric variable
datasal$totalyearlycompensation <- as.numeric(as.character(datasal$totalyearlycompensation))
head(datasal) # Should now be type <dbl> so that the tree can work

# Create the regression tree
datasal.tree <- tree(totalyearlycompensation~., data=datasal)
plot(datasal.tree)
text(datasal.tree, pretty=0)