#Author: Madison Stafford, Date: 3/26/26, Purpose: To generate a phylogentic tree structure 

#Load pacckage ape
library(ape)

#Generate some dummy data for tree structure 
text.string<- "(((((((cow, pig),whale),(bat,(lemur,human))),(robin,iguana)),coelacanth),gold_fish),shark);" 

#Read data as tree structure 
vert.tree<-read.tree(text=text.string)

# Plot the tree structure 
plot(vert.tree,no.margin=TRUE,edge.width=2)

# Writing/storing the tree structure dataset 
setwd("/Users/madisonstafford/Desktop")
write.tree(vert.tree, file="dummy.tre") 

