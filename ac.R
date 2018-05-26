#za datu funkciju lambda i lambdafix
ac = function(){
  norm <- function() {
    while (1) {
      u = runif(1)
      y = -log(u)
      u1 = runif(1)
      t= -log(u)/lambdafix
      if (u <= lambda(t)/lambdafix) {
        ifelse(runif(1) >= 0.5, return(y), return(-y))
      }
    }
    X=c(X,t)
  }

}



