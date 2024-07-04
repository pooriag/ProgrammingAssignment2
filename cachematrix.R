## Put comments here that give an overall description of what your
## functions do

## creating matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
      inv <<- NULL
      set <- function(m) x <<- m
      get <- function() x
      
      set_inv <- function(i) inv <<- i
      get_inv <- function() inv
      
      list(set = set, get = get, set_inv = set_inv, get_inv = get_inv)
}


## calculating invers of matrix and caching it

cacheSolve <- function(x, ...) {
        inv <- x$get_inv()
        if(!is.null(inv)) return(inv)
        
        inv <- solve(x$get() ,...)
        x$set_inv(inv)
        
        inv
}
