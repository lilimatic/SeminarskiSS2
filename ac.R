#za datu funkciju Lambda i lambdafix
#za nasu optimizajucu konstantu koristimo fiksirano lambda iz homogenog Puasonovog procesa
ac = function(){
    while (1) {
        #pravimo u
      u = runif(1)
        #eksponencijalna
      u1 = runif(1)
        #generisemo t metodom inverzne transformacija
      t= -log(u)/lambdafix
        #Algoritam za AC method
        #Generisemo T
      if (u1 <= Lambda(t)/lambdafix) {
          #gledamo u koju polovinu je zapalo i po tome posledjujemo 
          #Pa se ili vracamo na korak 3, ili prihvatamo. 
        ifelse(runif(1) >= 0.5, return(t), return(-t))
      }
  }



