#Simulacija vremena prispeca
#Lambda-intenzitet
#k broj dogadjaja
#trenutak t na vremenskoj osi
#Preko eksponencijalne raspodele
trenuci = function(lambda, k){
  T0 = 0
  T= T0 + cumsum(rexp(n = k, rate = lambda))
  return(c(T0,T))
}
trenuci(2,4)

#Preko uniformne raspodele
#k-broj dogadadja do trenutka t 
trenuci = function(k){
  #Inicijalizacija pocetne vrednosti
  T0 = 0
  #generisemo k brojeva iz (0,t)
  T= runif(k,0,1)
  #Pravimo variacioni niz 
  return(sort(T))
}
#10 trenutaka prispeca
trenuci(10)

