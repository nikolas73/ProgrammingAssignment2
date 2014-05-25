## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        print (x)
        print (m)
        set <- function(y) {
                
                x<<- y
                
                
                m <<- NULL
                print (m)
        }
        
        get <- function() x
        setinvematrix<- function(solve) m <<- solve
        print (setinvematrix)
        getinvematrix <- function() m
        print (getinvematrix())
        list(set = set, get = get,
             setinvematrix = setinvematrix,
             getinvematrix = getinvematrix)
        print (list())
}

## Write a short comment describing this function
cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinvematrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        matrix <- x$get()
        m <- solve(matrix, ...)
        x$setinvematrix(m)
        m
}


