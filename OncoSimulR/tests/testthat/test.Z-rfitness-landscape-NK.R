trace(OncoSimulR::plotFitnessLandscape, edit = TRUE) #at the end: return(length(maxF))
#  maxF is a vector which indicates which rows in genot matrix are peaks, so its length is the number
#of peaks

#this generates the matrix which we used to represent the number of peaks as a funtion of N and K
#In the presentation we had 100 runs each. 
for (g in 2:10)
  {


  for(k in 0:(g-1))
  { 

  n_max <- c()
  for (a in 1:30)
  {
    max <- OncoSimulR::plotFitnessLandscape( rfitness(Nk_model = TRUE, k=k, g=g) )
    n_max <- c(n_max, max)
  }    
  numberMaxMatrix[k+1, g- 1] = mean(n_max)

  }
}

#The returned matrix is used in the test below
test_that("peaks increase with k",{
  v <-apply(numberMaxMatrix, 2, function(x){  identical(order(x) , c(1:length(x)))   }
  )
  stopifnot( length(v) == sum(v)
             
  )
}
)


test_that("Interaction Matrix Shape", {

  for(g in 1:10) {
    for(k in 0:(g-1))
      for( a in 1:10){
{   
   matrixInt <- OncoSimulR:::generate_interaction_matrix(g, k, mu = 1, sd = 1)
   stopifnot( nrow(matrixInt) == g )
   stopifnot( ncol(matrixInt) == 2**(k+1) )
}
      }
  }
}
)


test_that("Peaks for k = 0 is equal to 1", {

  for(j in 2:10) {

    for(a in 0:30)
    {   
      nPeaks <- OncoSimulR::plotFitnessLandscape(rfitness(g = j, k = 0, Nk_model = TRUE))
      
      stopifnot( nPeaks == 1 )
    }
  }
}
)



