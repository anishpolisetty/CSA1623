# Creating vectors
names <- c("siri", "mahi", "chiru")
age <- c(23, 24, 25)
marks <- c(88, 78, 25)

# Creating data frame
df <- data.frame(names, age, marks)

# Mean
mean_age <- mean(df$age)
print(paste("Mean of age:", mean_age))

# Median
median_age <- median(df$age)
print(paste("Median of age:", median_age))

# Mode (user-defined function)
getmode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

mode_age <- getmode(df$age)
print(paste("Mode of age:", mode_age))

# Write data frame to CSV file
write.csv(df, "datafr.csv", row.names = FALSE)