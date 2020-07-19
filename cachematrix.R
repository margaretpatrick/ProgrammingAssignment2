
## Write a short comment describing this function

The following functions are used to create a special object that stores a matrix and caches its inverse. 
The first function, makeCacheMatrix creates a special “matrix”, which is really a list containing a function to:
set the value of the matrix
get the value of the matrix
set the value of the inverse
get the value of the inverse

makeCachematrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) {i <<- inverse}
  getinverse <- function() {i}
  list(set = set,
       get = get,
       setInverse= setinverse, 
       getInverse = getinverse)
}

## Write a short comment describing this function



## 2. cacheSolve: 
This function computes the inverse of the special “matrix” returned by makeCacheMatrix above. 
If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.

cachesolve <- function(x, ...) {
 i<- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  mat = x$get()
  i <- mean(mat, ...)
  x$setInverse(i)
  i
}
