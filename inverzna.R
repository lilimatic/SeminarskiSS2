
inverzna_transformacija = function(T_n,Lambda,n) {
  #T_n je nase max(T)
  #Lambda funkcija koju smo zadali
  #inicijalizacija
  s=0;
  a = seq(0,T_n,n)
  T = c(0)
  while(T[length(T)] < T_n) {
    U=runif(1)
    s=s-log(U)
    #trazimo infimum td. \Lambda(a)=>s der po metodu 
    #F^{-1}(a)= inf{a:\Lambda(a)>s}
    t=min(a[which(vectorize(Lambda)(a)>=s)])
    T=c(T,t)
  }
  return(T)
}


