#fiksiramo
set.seed(1245)
#set.seed(35453)
homogen_poisson = function(lambda,n){
  #inicijalizacija trenutaka
  T = 0
  for(i in 1:n)
    #preko teoreme generisemo trenutke poissonovog procesa
    T[i+1]=T[i]+rexp(n=1, rate = lambda)
  #oblik za stepenastu funkciju
  hpp = stepfun(y=seq(0,n+1),x=T)
  #Grafik
  plot.stepfun(x=hpp, do.points = TRUE
               , col.points = "black", col.hor = "red", verticals = FALSE
               , main = "Grafik trajektorija homogenog Puasonovog procesa",
              xlab = "vreme" , ylab = "N(t,w)", lwd=3, xlim = c(0,max(T)))
}

homogen_poisson(2,12)






