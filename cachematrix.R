## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#The function below calls makeCacheMatrix

makeCacheMatrix <- function(x = matrix()) {


i<-NULL #i will be the 'inverse' and its reset to NULL every 
        #time makeCacheMatrix is called.
get<-function(y) { #this function returns the value of the original vector
    x<<-y
    i<<-NULL
}

get<- function()x
setinverse<-function(solve) i<<-inverse
#this is called by cacheMatrix() during the first CacheMatrix() assignment and it will
# store the value using superassignment
getinverse<- function()i # this will return the value of CacheMatrix() on subsequent assignments
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
i<- x$getinverse()
if(!is.null(i)) {
    message("getting cached data")
    return(i)
}
data<- x$get
i<- solve(data,...)
x$setinverse(i)
i}
