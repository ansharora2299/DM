library(cluster)
library(factoextra)
data <- iris
data$Species<-NULL
d<- dist(data,method = "euclidian")
hModel <- hclust(d,method="average")
plot(hModel)