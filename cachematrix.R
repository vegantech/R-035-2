## Coursera R (rprog-35) Assignment 2 Caching and Inverse of Matrix
## Estimated score:  7 out of 12
## 1 valid repo
## 1 >1 commit
## 1 sha-1 submitted
## 1 corresponding commit
## 1 partially complete  [out of 2]
## 2 functions are commented
## 0 solution is not correct [out of 2]
## 0 solution is not correct [out of 2]


makeCacheMatrix <- function(x = matrix()) {
  ### Creates a special "matrix" object that can cache its inverse.
  ### x is a matrix()
  ### returns a cachable matrix that can be used with cacheSolve
  
  
  ### for now it just returns the original matrix
  x

}


cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  ## x is a cachable matrix created previously by makeCacheMatrix
  
  ### solve calculates the inverse of a matrix,  pass in remaining arguments
  solve(x, ...)     
}
