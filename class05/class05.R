# Class 05 Graphs and Plots with R

# Section 2A: line plot

weight <- read.table("~/Desktop/BGGN213/class05/bimm143_05_rstats/weight_chart.txt", header = T)

#View(weight)

plot(weight$Age, weight$Weight, type = "o", pch=15, cex=1.5, lwd=2, ylim=c(2,10), xlab = "Age (months)", ylab = "Weight (kg)", main = "Weight vs. Age")

counts <- read.table("bimm143_05_rstats/feature_counts.txt", header = T, sep = "\t")

#View(counts)

barplot(counts$Count, horiz=T, names.arg=counts$Feature, xlab = "Count", main = "Counts in Mouse GRCm38 Genome", las = 1, xlim = c(0,80000))
par(mar = c(6,4,4,2))

rand <- c(rnorm(10000), rnorm(10000)+4)

hist(rand, breaks=80)

gender <- read.table("bimm143_05_rstats/male_female_counts.txt", header = T, sep= "\t")

barplot(gender$Count, col=c("red", "green"), names.arg=gender$Sample, las=2, ylab= "Counts", ylim = c(0, 20))

mfc <- read.delim("bimm143_05_rstats/male_female_counts.txt")

#View(mfc)

genes <- read.delim("bimm143_05_rstats/up_down_expression.txt")
table(genes$State)
str(genes)
nrow(genes)
plot(genes$Condition1, genes$Condition2, col=genes$State, xlab = "Condition 1 Expression", ylab = "Condition 2 Expression")
palette(c("red","green","blue"))
levels(genes$State)

#' title: "Class 05 Graphics"
#' author: "Krypton"
#' date: "January 25, 2019"
#' output: word_document
#' ---

#' Class 05 Graphics and plots with R
#' This is some narrative style **bold** and *italic*
#' to [webpages](https://)

