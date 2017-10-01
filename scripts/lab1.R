###################################################
# R commands: Statistics for microbiome studies  ##
# Lab 1: Introductory R                          ##
###################################################
# This file contains the R scripts for the lab.  ##

##################################
## 1. R as a calculator         ##
##################################
2 + 3
3 - 2
2^3
(2+3-2^3)*4
(2+3-3^3)/4
1:4
2+(1:4)^2
log(1:4)
log2(1:4)
log(1:4, base=3)
sin(c(0.5, 0.7, 1.0))
7%%2
abs(-2)
exp(4)
sqrt(5)
x <- 3
x
x <- -4
sqrt(x)


#############################
# 2. Create simple vectors ##
#############################

x <- c(1, 3.5, -27, 10.2)
x
y <- c("cat", "mouse", "dog", "fish", "pig")
z <- c(TRUE, FALSE, FALSE, TRUE, TRUE)
x <- 1:10
x <- seq(1, 10)
x <- seq(1, 10, by=2)
x <- rep(2, 4)
x <- rep(c(2, 4, 1), each=3)
x <- rep(c(2, 4, 1), 3)
log(seq(1,2,by=.1))
x <- c(0, 5, 10, NA, 20)
sum(x)
sum(x, na.rm=TRUE)
prod(x, na.rm=TRUE)
mean(x, na.rm=TRUE)
x <- 1:10
cumsum(x)
cummax(x)
cummin(x)


############################
## 3. Element in a vector ##
############################

y <- c(18, 32, 15, -7, 12, -9)
length(y)
y[3:5]
y[-3:5]
y[-c(1,5,6)]
y < 12
y[y<12]
which(y==32)
x <- 1:10
match(y, x)
colors <- c("red", "blue", "pink")
which(colors=="yellow")
x <- c(1,5,10,NA,15)
which(is.na(x))
which(!is.na(x))


#####################
# 4. factors ########
#####################
colors <- c(1,1,2,3)
colors <- factor(colors, label=c("red", "green", "blue"))
table(colors)



#####################
# 5. Matrices #######
#####################
help(cbind)
x <- c(8, 32, 15, -8, 13)
y <- 1:6
mat <- cbind(x, y)
help(rbind)
dim(mat)
ncol(mat)
nrow(mat)
mat[2,3]
mat[1:3, ]
mat[, 2]
mat[-1, ]
newmat <- matrix(1:9, nrow=3, byrow=FALSE)
newmat
rowMeans(newmat)
colMeans(newmat)
m <- matrix(1:9, nrow=3, byrow=TRUE)
colnames(m) <- letters[1:3]
rownames(m) <- paste('r', 1:3, sep="")
vect <- as.vector(newmat)


#############################
# 6. Matrix multiplication ##
#############################

mat <- matrix(1:9, nrow=3)
mat^2
mat %*% mat

##############################
## 7. Arrays               ###
##############################

myarr <- array(1:64, dim=c(4,4,4))
myarr
myarr[1,2,3]


##############################
## 8. DataFrame            ###
##############################

muscle <- rnorm(n=10, mean=3, sd=1)
sex <- factor(rep(c("Male", "Female"), c(4, 6)))
speed <- rep(0, 10)
speed[1:4] <- rnorm(4, 30-2*muscle[1:4], 2)
speed[5:10] <- rnorm(6, 40-2*muscle[5:10],2)
mydata <- data.frame(y=speed, x1=muscle, x2=sex)
summary(mydata)
str(mydata)
temp <- lm(y ~ x1 + x2, data=mydata)
summary(temp)


############################
## 9. lists              ###
############################

x <- list(one=c(12:23), two=c("BJ", "SH", "GZ", "SZ"),
          three=c(TRUE, FALSE, FALSE, TRUE),
          four=matrix(1:12, nrow=3))
x
x[[1]][3:6]
x$one[3:6]
x[["one"]][3:6]
y <- unlist(x)
str(y)

#############################
## 10. for/if             ###
#############################
y <- rep(NA, 10)
for (i in 1:10){
    if (i%%2 == 0){
        y[i] <- i^2
    } else {
       y[i] <- i^2 - 1
    }
}
y

##################################
## 11. Random number generator ###
##################################

x <- runif(100)
hist(x)  # histogram

x <- rnorm(100)
hist(x)                             # histogram
lines(density(x), lwd=2, col="red") # kernel density


##########################
## End of lab1         ###
##########################
