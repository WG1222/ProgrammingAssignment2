## Put comments here that give an overall description of what your
## functions do
## The following pair of functions cache the inverse of a matrix

## This function creates an object, which is a list contaning 4 fucnitons 
## set() - set the value of the matrix
## get() - get the value of the matrix
## set() - set the value of the inverse matrix
## get() - get the value of the inverse matrix
makeCacheMatrix <- function(x = matrix()) {
    matinv <<- NULL
    set <- function(y) {
        x <<- y
        matinv <<- NULL
    }
    get <- function() x
    setinv <- function(inv) inv <<- matinv
    getinv <- function() matinv
    list(set = set, get = get, 
         setinv = setinv,
         getinv = getinv)
}


## Write a short comment describing this function
## The function takes the object created above and calculates its inverse.
## If the inverse matrix has been calculated already, then it get the value
## returns it. Otherwise, it calculates the inverse matrix and sets the value 
## of the object.
cacheSolve <- function(x, ...) {
    matinv <- x$getinv()
    if(!is.null(matinv)) { 
        message("getting cahed data")
        return(matinv)
    }
    data <- x$get()
    matinv <- solve(data)
    x$setinv(matinv)
    matinv
}
