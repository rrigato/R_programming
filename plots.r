crime <- read.csv("http://datasets.flowingdata.com/crimeRatesByState2005.tsv",
 header=TRUE, sep="\t")



symbols(crime$murder, crime$burglary, circles=crime$population)





radius <- sqrt( crime$population/ pi )
symbols(crime$murder, crime$burglary, circles=radius)


symbols(crime$murder, crime$burglary, circles=radius,
 inches=0.35, fg="black", bg="green", xlab="Murder Rate", ylab="Burglary Rate")

symbols(crime$murder, crime$burglary, squares=sqrt(crime$population), inches=0.5)


text(crime$murder, crime$burglary, crime$state, cex=0.5)




install.packages("wordcloud")
install.packages("tm")
library(wordcloud)
library(tm)

# First simple example
# from help(wordcloud)

wordcloud(c(letters, LETTERS, 0:9), seq(1, 1000, len = 62))

# So to make a workcloud in R you need a list of word and the list of 
# coresponding frequencies.

# Second Example.
# from help(wordcloud)

wordcloud(
"Many years ago the great British explorer George Mallory, who 
was to die on Mount Everest, was asked why did he want to climb 
it. He said, \"Because it is there.\"

Well, space is there, and we're going to climb it, and the 
moon and the planets are there, and new hopes for knowledge 
and peace are there. And, therefore, as we set sail we ask 
God's blessing on the most hazardous and dangerous and greatest 
adventure on which man has ever embarked.",
	,random.order=FALSE)

