## makeCachMatrix creates a special matrix that can  
##set and get the value of the matrix and of the inverse.

makeCacheMatrix <- function(x = matrix()) {
##It stores the cached value, initialize to NULL, and set the value of matrix
        c<- NULL
        set <- function (y){
        x<<- y
        c<<- NULL
        }
##It gets the value of matrix, set inverse the matrix , and get the value of the inverse.
get <-function()x
setinverse <-function (inverse)c <<-inverse
getinverse <-function()c
list(set=set, get=get,setinverse=setinverse,getinverse=getinverse)
}

## cacheSolve computes the inverse of matrix returned by makeCacheMatrix.
cacheSolve <- function(x, ...) {
##It checks if the inverse has already been calculated.
## If it has, fucntion gets the result and skips the computation.     
c <- x$getinverse()
if(!is.null(c)){
        message("getting cashed data")
                return(c)
} ## If it hasn`t, function computes the inverse and sets the value. 
data<-x$get()
c<-solve (data,...)
x$setinverse(c)
c
}
