cacheSolve <- function(mtx, ...) {
  inverse <- mtx$getinv()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  data <- mtx$get()
  inverse <- solve(data, ...)
  mtx$setinv(inverse)
  inverse
}