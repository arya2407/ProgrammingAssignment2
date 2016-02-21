## This pair of functions can cache the inverse of a matrix

## The first function creates a special "matrix" object that can 
## can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(matrix) {
		x <<- matrix
		i <<- NULL
	}
	get <- function() {
		m
	}
	setInverse <- function(inverse) {
		i <<- inverse
	}
	getInverse <- function() {
		i
	}
	list(set=set, get=get, setInverse = setInverse, getInverse =  		getInverse)
}


## The second function computes the inverse of the special "matrix"
## returned by the first function. If the inverse has already been
## calculated (and the matrix has not changed), then this second 
## function should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        if(!is.null(m)) {
        	message("getting cached data")
        	return(m)
        }
        data <- x$get()
        m <- solve(data) %% data
        x$setInverse(m)
}
