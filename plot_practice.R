A <- matrix(c(1:6, 1, 4, 5, 19, 20, 1), nrow = 6, ncol = 2)
colnames(A) <- c("X", "Y")
plot(A, type= "l", col= "green", lwd= 5, xlab= "Hours Spent Trying to Make This Graph", ylab= "How Many Times I Wanted To Scream", ylim= c(0, 20), main= "Viki's Emotional State Learning Basic Commands")

x <- matrix(c(1:10, 1, 1, 4, 2, 1, 5, 3, 2, 2, 7), nrow = 10, ncol = 2)
colnames(x) <- c("X", "Y")
plot(x, type= "l", col= "green", lwd= 5, xlab= "Week of the Quarter", ylab= "How Many Times I Want To Cry", ylim= c(0, 10), main= "Changing Stress Levels Throughout the Quarter System")