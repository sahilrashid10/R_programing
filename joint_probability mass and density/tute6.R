#------------Q1----------------------------------------------------
    #------------(i)----------------------------------------------------
install.packages("pracma")
library(pracma)
f = function(x,y){
  return(2*(2*x+3*y)/5)
}
ans = (integral2(f, 0, 1, 0, 1)$Q)
print(ans)
  #------------(ii)----------------------------------------------------
g_x = function(x){
  integrate(function(y)f(x,y),0,1)$value
}
cat("G[1]=",g_x(1))
  #------------(iii)----------------------------------------------------
h_y = function(y){
  integrate(function(x)f(x,y),0, 1)$value
}
cat("h[y=0]=",h_y(0))
  #------------(iv)----------------------------------------------------
g_xy = function(x,y){
  return(x*y*f(x,y))
}
ans = integral2(g_xy, 0, 1, 0, 1)
cat("Expected value g(x,y)=x*y=",ans$Q)


#------------Q2----------------------------------------------------
   
    #------------(i)----------------------------------------------------
pmf_matrix = matrix(nrow=4, ncol=3)
for(x in 0:3){
  for(y in 0:2){
    pmf_matrix[x+1,y+1] <- (x+y)/30 
  }
}
print(pmf_matrix)
    #------------(ii)----------------------------------------------------
print(sum(pmf_matrix))

    #------------(iii)----------------------------------------------------
g_x = apply(pmf_matrix, 1, sum)
print(g_x)

    #------------(iv)----------------------------------------------------
h_y = apply(pmf_matrix, 2, sum)
print(h_y)

    #------------(v)----------------------------------------------------
p_x0_y1 = pmf_matrix[1,2]/h_y[2]
print(p_x0_y1)

    #------------(vi)----------------------------------------------------
#--------
x_vals = 0:3
y_vals = 0:2
cat("E[x]=",sum(x_vals*g_x),"\n")
#--------
cat("E[y]=",sum(y_vals*h_y))
#--------
E_xy = sum(outer(x_vals, y_vals, function(x,y) x*y)*pmf_matrix)
cat("E[xy]=",E_xy)
#-------
E_x = sum(x_vals*g_x)
var_x=sum((x_vals - E_x)^2*g_x)
cat("var(x)=",var_x)
#-------
E_y = sum(y_vals*h_y)
var_y=sum((y_vals-E_y)^2*h_y)
cat("var(y)=", var_y)
#-------
cov_xy = E_xy - E_x*E_y
cat("COV(X,Y)=",cov_xy)
#-------
print("co_relation co-efficint(r)")
cat("r",(E_xy - E_x*E_y)/(sqrt(var_x)*sqrt(var_y)))
    
    
    
    