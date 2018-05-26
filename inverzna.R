
inverzna_transformacija = function(T_n,Lambda,n) {
  s=0;
  a = seq(0,T_n,n)
  T = c(0)
  while(T[length(T)] < T_n) {
    U=runif(1)
    s=s-log(U)
    t=min(a[which(Vectorize(Lambda)(a)>=s)])
    T=c(T,t)
  }
}


