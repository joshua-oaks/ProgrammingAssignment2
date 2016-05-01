## Put comments here that give an overall description of what your
## functions do

## creates a list containing the values of the matrix, and sets the values to allow the next function to create an inverse.



makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  invert<- function(invert) m <<- invert
  getinvert<- function() m
  list(set = set, get = get,
      invert = invert,
       getinvert = getinvert)
}
  



  
  
  
  



## Write a short comment describing this function

## Checks if inverse has been calculated; if not it produces inverse

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}
        ## Return a matrix that is the inverse of 'x'
}
