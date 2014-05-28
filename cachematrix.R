## Put comments here that give an overall description of what your
## functions do

## Passing a matrix to set function and assigning that value to get()
##Function solve inverse the matrix and assigned to m and m"s value is stored in getmatrix
makeCacheMatrix <- function(x = matrix()) {
                m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrix <- function(solve) m <<- solve
        getmatrix <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)

}

## m is assigned the value of getmatrix from makeCacheMatrix function
##matrix gets its value from get function from makeCacheMatrix function
## solve function is used to the matrix and that inverse matrix is assigned to m
## Now we are setting this value with setmatrix function
cacheSolve <- function(x, ...) {
           m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        matrix <- x$get()
        m <- solve(matrix, ...)
        x$setmatrix(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
