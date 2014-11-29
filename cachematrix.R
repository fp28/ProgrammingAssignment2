## These functions take in an invertible matrix and calculate its
##inverse and cache the output so that if the same matrix is
##called it does not have to compute the inverse again but just 
##call from cache.
## 

## This function takes it a matrix and solve for its inverse 

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}



## This function caches the inverse or calls the inverse from the cache if the matrix has already been caculated 

cacheSolve <- function(x, ...) {
	 s <- x$getsolve()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
  
        ## Return a matrix that is the inverse of 'x'
}
