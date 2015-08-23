## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##List of functions for getting and setting values of matrix and inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## Write a short comment describing this function
## Return the in verse of the given matrix
## check if cached
## if not get/set inverse
## if return cached element 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)){
    return(i)
  }
  datain <- x$get()
  i <- solve(datain)
  x$setinverse(i)
  i
}
