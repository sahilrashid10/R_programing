#DOUBTS
# 1.Quartiles wrong  

#                                         Q1(a)
gold <- rep("gold",20)
silver <- rep("bronze",30)
bronze <- rep("silver",50)

choice <- c(gold, silver, bronze)
num_to_choose <- 10

sample_space <- sample(choice, num_to_choose, replace = TRUE)
print(sample_space)
  
#                                        (b)

x1 <- rep("success",1)
x2 <- rep("fail",1)
items <- c(x1,x2)

sample_space = sample(items,10,replace=TRUE,prob = c(0.9,0.1))
print(sample_space)

#                                         Q2
#                                    a)i(not working)
factorial <- function(n) {
  fact <- 1
  for(i in 1:n){
    fact <- fact*i
  }
  return(fact)
}
M <- 21
probability1 <- 1 - (factorial(365))/(((365)*M)*factorial(365 - M))
print(probability1)

a <- c(1,2,3,4,5,6,7,8,9,10)
quantile(a,c(0.25,0.5,0.75))
#                                    a)ii

n = as.integer(readline(prompt = "Enter no of people in a room: "))
match <- 0

#creating the simulation
for(i in 1:1000){
  birthdays <- sample(c(1:365), n, replace = TRUE)
  if(length(unique(birthdays)) < n){
      match <- match + 1
  }
}
#calculating the probability
probability <- match/1000
print(probability)

#                                    b)
M <- 1
N <- 1000 # Number of simulations
p <- 0

while(p < 0.5) {
  M <- M + 1
  if(M > 365) {
    break
  }
  
  count_duplicates <- 0
  for(i in 1:N) {
    birthdays <- sample(365, M, replace=TRUE)
    if(any(duplicated(birthdays))) {
      count_duplicates <- count_duplicates + 1
    }
  }
  
  p <- count_duplicates / N
}

print(M)
print(p)



#                                         Q3(don't forget to use () while return)


cond_probability <- function(p_c_given_r,p_r,p_c){
  p_r_given_c <- (p_c_given_r * p_r)/p_c
  return (p_r_given_c)
}

p_c_given_r = 0.85
p_r=0.2
p_c=0.4
ans = cond_probability(p_c_given_r, p_r, p_c)

print(ans)
#                                         Q4(sd,var = sample ones i.e n-1)
data(iris)
head(iris,40)
str(iris)
range(iris$Sepal.Length)
median(iris$Sepal.Length)
mean(iris$Sepal.Length)
quantile(iris$Sepal.Length, c(0.25,0.75))
range_ = range(iris$Sepal.Length)
print(range_)
sd(iris$Sepal.Length)
var(iris$Sepal.Length)
summary(iris)

#                                         Q5(table - segregates v into item's with freq)
find_mod <- function(v){
  f_vector <- table(v)
  max_f <- max(f_vector)
  mode_v <- names(f_vector)[f_vector == max_f]
  return (mode_v)
}

ch = c("a","a","b","c","d","d","d","a","a","s","d")
mod_value = find_mod(ch)
print(mod_value)


