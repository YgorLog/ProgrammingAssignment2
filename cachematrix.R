## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setmatrizin <- function(matrizin) i <<- matrizin
  getmatrizin <- function() i
  list(set = set, get = get,
       setmatrizin = setmatrizin,
       getmatrizin = getmatrizin)
}

## This function computes the inverse of the special "matrix" created by makeCacheMatrix above. 
## If the inverse has already been calculated , then it should retrieve the inverse 
## from the cache.

cacheSolve <- function(x, ...) {
  i <- x$getmatrizin()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setmatrizin(i)
  i
}
