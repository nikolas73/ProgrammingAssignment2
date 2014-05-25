## Put comments here that give an overall description of what your
## functions do:  I followed exactly what was done for the mean function. changing the varable

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        
        ## print (x)
        ## print (m)
        ## this functions do print the given x matrix and m as null
        set <- function(y) {
                
                x<<- y
                
                
                m <<- NULL
                ## print (m)
                ##This is not printed
        }
        
        get <- function() x
        
        ## This was weird expression because usually we have funtion (x){...} but it appears if x is defined previously then function () x ( by typing get()) gives you x
        setinvematrix<- function(solve) m <<- solve
        ## print (setinvematrix)
        getinvematrix <- function() m
        ## print (getinvematrix())
        list(set = set, get = get,
             setinvematrix = setinvematrix,
             getinvematrix = getinvematrix)
        ## print (list())
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


