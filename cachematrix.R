## Coursera R (rprog-35) Assignment 2 Caching and Inverse of Matrix

makeCacheMatrix <- function(x = matrix()) {
  ### Creates a special "matrix" object that can cache its inverse.
  ### x is a matrix()
  ### calling set will clear the cache
  ### returns a cachable matrix that can be used with cacheSolve
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setInverse <- function(i) inverse <<- i
  getInverse <- function() inverse
  
  #return a list of functions
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  ## x is a cachable matrix created previously by makeCacheMatrix
  ## If the inverse is already cached, it will use cached inverse
  ## Otherwise it will calculatem cache, and return inverse
  
  i <- x$getInverse()  #check cache
  if(!is.null(i)) {    
    message("getting cached data")
  } else {  #cache miss
    i <- solve(x$get(), ...)
    x$setInverse(i)
  }
  
  i  
}

#For testing
randomMatrix <- matrix(sample.int(15, size = 9*9, replace = TRUE), nrow = 9, ncol = 9)


