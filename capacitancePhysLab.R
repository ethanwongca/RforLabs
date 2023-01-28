# Physics Capacitance Lab 1A!
# This will be the simplest physics lab  
# in terms of R due to the simplicity of the lab

# Constants throughout the equations using keA/d = C
electricConstant <- 8.85*10^-12
areaofCapacitorsinM <- c(200*10^-4, 100*10^-4, 50*1^-4)
distance <- 1*10^-3
dielectricConstantPaper <- 3
x <- c(1, 2, 3, 4, 5)

# Values obtained from the arduino to measure capacitance
# 200 cm^2
firstValueTime10Power11 <- c(5.31, 5.30, 5.21, 5.34, 5.21, 5.67, 5.21, 5.31, 5.32)
# 100 cm^2
secondValueTime10Power11 <- c(2.65, 2.54, 2.61, 2.63, 2.58, 2.59, 2.61, 2.69)
# 50 cm^2 
thirdValueTime10Power11 <- c(1.33, 1.35, 1.34, 1.33, 1.32, 1.36, 1.38, 1.29, 1.31)

# Get the means and STD as vectors
means <- c(mean(firstValueTime10Power11), mean(secondValueTime10Power11), mean(thirdValueTime10Power11))
STD <- c(sd(firstValueTime10Power11), sd(secondValueTime10Power11), sd(thirdValueTime10Power11))
matrix <- c(means, STD)
dim(matrix) <- c(3,2)


capacitanceTheoretical <- function(areaofCapacitorsinM, distance) {
    # keA/d = C where k is constant 
    capacitance <- dielectricConstantPaper * areaofCapacitorsinM * electricConstant / distance
    return(capacitance)
}
