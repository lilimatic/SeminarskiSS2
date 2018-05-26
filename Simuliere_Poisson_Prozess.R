#Simuliramo brojacki proces
#Homogeni Poissonov proces
set.seed(10)
simulacija_hpp = function(lambda,t,ponavljanja) {
  #fiksiramo neki maksimalan broj dogadjaja 
  #maksimalni broj dogadjaja 
  max_broj = rpois(ponavljanja,lambda*t)
  #Pravimo matricu inter-vremena dimenzija
  #ponavljane X maksimal
  y_matrica = matrix(rexp(ponavljanja*matrica,lambda),
                     ponavljanja,max_broj)
  #koristimo apply funkciju da bi primenili 
  #na funkciju "broj_dogadjaja, koju smo 
  #pre toga napravili
  apply(y_matrica,1,broj_dogadjaja,t)
}

simulacija_hpp(2,3,10)
#[1] 6 6 6 3 4 6 6 3 4 6