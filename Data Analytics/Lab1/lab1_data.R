EPI_data <- read.csv("./EPI_data2010.csv")
#or
#EPI_data <- read.xlsx(”<path>/2010EPI_data.xlsx")
# Note: replace default data frame name – cannot start with numbers!
View(EPI_data)

names(EPI_data) <- as.matrix(EPI_data[1,])
EPI_data <- EPI_data[-1,]
EPI_data[] <- lapply(EPI_data, function(x) type.convert(as.character(x)))

attach(EPI_data) 	# sets the ‘default’ object
fix(EPI_data) 	# launches a simple data editor
EPI_data$EPI 			# prints out values EPI_data$EPI
tf <- is.na(EPI_data$EPI) # records True values if the value is NA
E <- EPI_data$EPI[!tf] # filters out NA values, new array
E
GRUMP_data <- read.csv("./GPW3_GRUMP_SummaryInformation_2010.csv")

summary(EPI_data$EPI)
fivenum(EPI_data$EPI, na.rm=TRUE)
