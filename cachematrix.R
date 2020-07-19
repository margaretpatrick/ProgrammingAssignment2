## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## My First function caches the inverse of a matrix 
## My Second function takes a matrix and calculates its inverse
## Takes a matrix and caches the matrix

makeCacheMatrix <- function(x = matrix()) {
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

}


## Write a short comment describing this function
# Checks whether the inverse is already stored in cache. If not then calculates the inverse
# if the inverse is already cached then shows the cached inverse matrix

cachesolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat = x$get()
  m <- mean(mat, ...)
  x$setInverse(m)
  m
}
