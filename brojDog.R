#Brojimo broj dogadjaja do trenutka T
set.seed(1)
broj_dogadjaja = function(T,t){
  #Ako se prvi dogadjaj desio posle t, nije doslo do nijednog dogadjaja
  if(T[1]>t)
    return(0)
  else
    #vraca maksimum sume indikatora do poslednjeg dogadjaja pre trenutka t
    return(max(which(cumsum(T)<t)))
}

#Generisemo 10 vrednosti u intervalu od 0 do 3 i gledamo koliko njih 
#njih se najvise desilo pre t=2 
#Trenuci prispeca 
(T = runif(10,0,3))
t=2
broj_dogadjaja(T,t)
#[1] 2 doslo je do 2 dogadjaja pre trenutka t=2



