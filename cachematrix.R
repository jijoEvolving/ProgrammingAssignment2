## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates a list of functions to get/ set values of matrix and get/ set values of Inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
inv <<- NULL
set <- function(y) {
x <<- y
inv <<- NULL
}
get <- function() x
setinverse <- function(inverse) inv <<- inverse
getinverse <- function() inv
list(set = set, get = get,
setinverse = setinverse,
getinverse = getinverse)
}


## cacheSolve solves the inverse of the special matrix returned by makeCacheMatrix. 
## If the inverse has already been calculated then cacheSolve would retieve the inverse from Cache


cacheSolve <- function(x, ...) {
inv <= x$getinverse()
if(!is.null(inv)) {
message("getting cached data")
return(inv)
}
mat <- x$get()
inv <- solve(mat, ...)
x$setinverse(inv)
inv
}
