#part 1
hotdogs <- read.csv("http://datasets.flowingdata.com/hot-dog-contest-winners.csv")


# Default barchart
barplot(hotdogs$Dogs.eaten)

# Year labels
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year)

# Axis labels
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, xlab="Year", ylab="Hot dogs and buns (HDB) eaten")

# Fill color and border
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col="red", border=NA, xlab="Year", ylab="Hot dogs and buns (HDB) eaten")


# Highlight USA colors
fill_colors <- c()
for ( i in 1:length(hotdogs$Country) ) {
	if (hotdogs$Country[i] == "United States") {
		fill_colors <- c(fill_colors, "#821122")
	} else {
		fill_colors <- c(fill_colors, "#cccccc")
	}
}
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col=fill_colors, border=NA, xlab="Year", ylab="Hot dogs and buns (HDB) eaten")


# Highlight record years with color
fill_colors <- c()
for ( i in 1:length(hotdogs$New.record) ) {
	if (hotdogs$New.record[i] == 1) {
		fill_colors <- c(fill_colors, "#821122")
	} else {
		fill_colors <- c(fill_colors, "#cccccc")
	}
}
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col=fill_colors, border=NA, xlab="Year", ylab="Hot dogs and buns (HDB) eaten")


# Spacing
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col=fill_colors, border=NA, space=0.3, xlab="Year", ylab="Hot dogs and buns (HDB) eaten", main="Nathan's Hot Dog Eating Contest Results, 1980-2010")

barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col=fill_colors, border=NA, space=0.5, xlab="Year", ylab="Hot dogs and buns (HDB) eaten")

# Main title
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col=fill_colors, border=NA, space=0.25, xlab="Year", ylab="Hot dogs and buns (HDB) eaten", main="Nathan's Hot Dog Eating Contest Results, 1980-2010")







# Load data
subscribers <- read.csv("http://datasets.flowingdata.com/flowingdata_subscribers.csv", sep=",", header=TRUE)

# Default plot with points
plot(subscribers$Subscribers)

# Default plot with type explicity specified
plot(subscribers$Subscribers, type="p", ylim=c(0, 30000))

# Draw vertical lines
plot(subscribers$Subscribers, type="h", ylim=c(0, 30000))

# Draw points with above lines
points(subscribers$Subscribers)

# Edits with colors and labels
plot(subscribers$Subscribers, type="h", ylim=c(0, 30000), xlab="Day", ylab="Subscribers")
points(subscribers$Subscribers, pch=19, col="black") 



