setwd("C:\\Users\\���������\\Documents\\���\\������� ��������� �������� �������")

data <- read.table(file = "Prodazhi_2009-2015.txt", header = TRUE, sep = "\t",
                        dec=",", na.strings = c("NA", "", "N/A"), stringsAsFactors = FALSE)
# remove all NA
data <- na.omit(data)

# prepare columns
data$���� <- as.numeric(substr(data$����, 4, 5))
data$������ <- as.numeric(data$������)

# remove negative numbers, cause they are not interesting for customer
data <- data[!(data$������ <= 0),]

###########################################################
# just static info
agents = unique(factor(data$����������));
nomencl = unique(factor(data$������������));
char = unique(factor(data$��������������.�����������));
###########################################################

print (substr(data$����[1], 4, 5))