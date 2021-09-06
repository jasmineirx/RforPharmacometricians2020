# This is an example R script

# Here I load the libraries/packages I need:
library(ggplot2)
library(dplyr)

# Here I read my data set:
my_data_set <- read.csv("iris.csv")

# Now I am going to make a graph about some Iris petal data
my_graph <- ggplot(my_data_set) +
  aes(x = Sepal.Length, y = Sepal.Width, color = Species) +
  geom_point() +
  theme_minimal() +
  ggtitle("Sepal length and width for different iris species") +
  xlab("Length") +
  ylab("Width") +
  scale_color_manual(values = c("magenta4", "orangered2", "turquoise4"))

# Here I will save my graph
ggsave("iris_graph.png")
  

