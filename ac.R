#za datu funkciju lambda i lambdafix
#za nasu optimizajucu konstantu koristimo fiksirano lambda iz homogenog Puasonovog procesa
ac = function(){
    while (1) {
        #pravimo u
      u = runif(1)
        #eksponencijalnu
      y = -log(u)
      u1 = runif(1)
        #generisemo t metodom inverzne transformacije
      t= -log(u)/lambdafix
        #Algoritam za AC method
      if (u1 <= Lambda(t)/lambdafix) {
        ifelse(runif(1) >= 0.5, return(y), return(-y))
      }
  }



