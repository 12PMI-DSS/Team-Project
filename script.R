setwd("C:\\Users\\Александр\\Documents\\ВШЭ\\Системы поддержки принятия решений")

data <- read.table(file = "Prodazhi_2009-2015.txt", header = TRUE, sep = "\t",
                        dec=",", na.strings = c("NA", "", "N/A"), stringsAsFactors = FALSE)
# remove all NA
data <- na.omit(data)

# prepare columns
data$Дата <- as.numeric(substr(data$Дата, 4, 5))
data$листов <- as.numeric(data$листов)

# remove negative numbers, cause they are not interesting for customer
data <- data[!(data$листов <= 0),]

###########################################################
# just static info
agents = unique(factor(data$Контрагент));
nomencl = unique(factor(data$Номенклатура));
char = unique(factor(data$Характеристика.номенклатры));
###########################################################

print (substr(data$Дата[1], 4, 5))