library(cluster)
library(factoextra)
data <- iris
data$Species<-NULL
d<- scale(dist(data,method = "euclidian"))
kfit <- kmeans(d,3)
fviz_cluster(kfit, data)