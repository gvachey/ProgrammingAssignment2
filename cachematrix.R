## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function generate a list of 4 functions to store the initial matrix, store the inverse matrix and rrecall the reverse matrix
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinvert <- function(invert) m <<- invert
  getinvert <- function() m
  list(set = set, get = get,
       setinvert = setinvert,
       getinvert = getinvert)
}


## Write a short comment describing this function
#This function test wether the inverse matrix has already been computed and stored (by calling the MakeCacheMatrix list). 
# If it has been already computed, this fucntion will return its value and display "getting cache data"
# If it has not been previously calculated, this fucntion will compute the inverse matrix and store it by caling the setinvert fucntion defined in MakeCacheMatrix function
cacheSolve <- function(x, ...) {
  m <- x$getinvert()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinvert(m)
  m   
     ## Return a matrix that is the inverse of 'x'
}
