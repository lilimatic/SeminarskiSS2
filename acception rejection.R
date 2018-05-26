####Njegov kod
t=0
X=numeric(0)
while(X[length(X)]<=Tmax){
  u=runif(1)
  t=t-log(u)/lambdau
  if(runif(1)<=lambda(t)/lambdau) X=c(X,t)
}



