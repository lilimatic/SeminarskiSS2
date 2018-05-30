
inverzna_transformacija = function(T_n,Lambda,n) {
  #T_n je nase max(T)
  #Lambda funkcija koju smo zadali
  #inicijalizacija
  s=0;
  a = seq(0,T_n,n)
  T = c(0)
  while(T[length(T)] < T_n) {
    U=runif(1)
    #analogno kao i sa casa 
    s=s-log(U)
    #trazimo infimum td. \Lambda(a)=>s der po metodu 
    #F^{-1}(a)= inf{a:\Lambda(a)>s}
    #Funkcija sapply racuna sve vrednosti od Lambda u zavisnosti od a
    #t je minimalna svih vrednosti od a za koje je inf{a:\Lambda(a)>s}
    #to ponavljamo sve dok ne izadjemo iz petlje
    t=min(a[which(sapply(a,Lambda)>=s)])
    T=c(T,t)
  }
  #vraca nasu inverznu transformaciju
  return(T)
}


