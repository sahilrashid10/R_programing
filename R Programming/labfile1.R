######      	                  Q1	

#The second c in the R code stands for "combine" or "concatenate."
# Create the vector using the c() function
my_vector <- c(5, 10, 15, 20, 25, 30)
mini = min(my_vector)
maxi = max(my_vector)

#paste is used to concatenate value mini and string
print(paste(mini,"Minimum"))
print(paste(maxi, "maximum"))

#####                                Q2

num = as.integer(readline(prompt="Enter a number: "))
num=6
factorial = 1
if(num < 0) {
print("Sorry, factorial does not exist for negative numbers")
} else if(num == 0) {
print("The factorial of 0 is 1")
} else {
for(i in 1:num) {
factorial = factorial * i
}
print(paste("The factorial of", num ,"is",factorial))
}

#####                            Q3(dont use "next" its a keyword in r)

num = as.integer(readline(prompt="How many fibonacci no's:"))
num = 5
prev <- 0
curr <- 1
v <- c()
v <- c(v, prev)
v <- c(v, curr)
for(i in 1:num){
  	nex <- prev + curr
  	v <- c(v, nex)
  	prev <- curr
  	curr <- nex
}
print("Fibonacci series:")
print(v)

#####                            Q4(stop - to raise exception)
add <- function(x,y){
	return (x+y)
}
sub <- function(x,y){
	return (x*y)
}
mul <- function(x,y){
	return (x-y)
}
div <- function(x,y){
	if(y == 0)
	stop("Can't divide by zero")
	return (x/y)
}
choice = '/'
x = 40
y = 40
result <- 0
result <- switch(choice,
	 "+"=add(x,y),
	 "-"=sub(x,y),
	 "*"=(mul(x,y)),
	 "/"=div(x,y),
	 "invalid input")
print(result)

#####                                        Q5
y <- c("A", "B", "C", "D", "E", "F", "G", "H")
x = c(7,15,17,38,28,21,56,99)
barplot(x,xlab = "X-Axis",ylab = "Count",col = "orange",col.axis = "red",col.lab= "darkgreen")
pie(x,labels = y,col = "orange",main = "Pie chart",radius = 1,col.main = "green")

x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)

# Create a scatter plot
plot(x, y,
     xlab = "X axis",       # Label for x-axis
     ylab = "Y axis",       # Label for y-axis
     col = "red",
     col.lab = "seagreen", col.axis = "blue")  


