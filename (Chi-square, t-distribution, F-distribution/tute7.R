#TUTE 5
#----------------------  Q1    ----------------------------------------------------
n = 100
df = n-1
val = rt(n,df)
hist(val, main="Q")
#----------------------  Q2    ----------------------------------------------------
rchisq(100,2)
rchisq(100,10)
rchisq(100,25)
#----------------------  Q3    ----------------------------------------------------
val = seq(-6,6,length=100)
df1 = dt(val, 1)
df4 = dt(val, 4)
df10 = dt(val, 10)
df30 = dt(val, 30)
plot(df30, type='l',lwd=2,col='red' ,main="Comparison")
lines(df1, col='green', lwd=2)
lines(df4, col='blue',lwd=2)
lines(df10, col='purple', lwd=2)
legend("topleft", legend = c("df=1", "df=4", "df=10", "df=30"),
       col = c("green", "blue", "purple", "red"), lwd = 2)
#----------------------  Q4    ----------------------------------------------------
#------i
cat("95th quantile for df(10,20)=",qf(0.95,10,20))
#------ii
cat("Area under the curve 0 to 1.5 =",pf(1.5, 10,20))
cat("Area under the curve 1.5 to +inf =",1-pf(1.5, 10,20))
#------iii
qvals = c(0.25,0.5,0.75,0.99)
cat("Quantile values corresponding to:0.25,0.5,0.75,0.99=",qf(qvals, 10, 20))
#------iv
rf_sim=rf(1000, 10, 20)
cat("1000 simulations=",rf_sim)
hist(rf_sim,main="SIMULATIONS")
