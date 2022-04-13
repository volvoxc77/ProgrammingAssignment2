makeCacheMatrix <- function(mtx = matrix()) {
  inverse <- NULL
  set <- function(y) {
    mtx <<- y
    inverse <<- NULL
  }
  get <- function() mtx
  setinv <- function(inv) inverse <<- inv
  getinv <- function() inv
  
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}