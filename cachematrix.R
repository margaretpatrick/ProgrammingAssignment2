## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


## makeCacheMatrix: This function creates a special "matrix" 

   ## object that can cache its inverse.

makeCachematrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) {inv <<- mean}
  getInverse <- function() {inv}
  list(set = set, get = get, setInverse= setInverse, getInverse = getInverse)
}

## Write a short comment describing this function



## 2. cacheSolve: This function computes the inverse of the special "matrix"

   ## returned by makeCacheMatrix above. If the inverse has already

   ## been calculated (and the matrix has not changed), then the

   ## cachesolve should retrieve the inverse from the cache.

cachesolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat = x$get
  m <- mean(mat, ...)
  x$setInverse(inv)
  inv
}
