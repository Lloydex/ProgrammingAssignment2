## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(X = matrix()) {
  I <- NULL
  
# it sets the matrix
   setmatrix <- function(Y) {
           X <<- Y
           I <<- NULL
   }
#it returns matrix
getmatrix <- function() X

# it sets the inverse matrix
setinvmatrix <- function(inverse) I <<- inverse

#it will return inverse matrix
getinvmatrix <- function() I
list(setmatrix  = setmatrix ,
        getmatrix = getmatrix,
        setinvmatrix = setinvmatrix,
        getinvmatrix =  getinvmatrix)
 }


## Write a short comment describing this function
#it solves the inverse matrix
cacheSolve <- function(X, ...) {
        ## Return a matrix that is the inverse of 'X'
  I <- X$getinvmatrix()
  if (!is.null(I)) {
    message("getting cached data")
    return(I)
  }
  data <- X$getmatrix()
  I <- solve(data, ...)
  X$setinvmatrix(I)
  I
}

