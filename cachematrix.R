## The following functions create a special matrix and return its inverse


## makeCacheMatrix creates a special matrix that would be inversable

makeCacheMatrix <- function(x = matrix()) {
  m<- NULL
  set<- function (y){
    x<<- y
    m<<- NULL
  }
  get<- function()x
  setinverse<- function (inverse) m <<- inverse
  getinverse<- function() m
  list (
    set= set, get=get,
    getinverse=getinverse, setinverse=setinverse)
  
  }


## cacheSolve returns the inverse of the matrix created by makeCacheMatrix function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<- x$getinverse()
  if(!is.null(m)){
    message("returning cached data")
    
    return(m)
  }
  mydata<- x$get()
  m<- inverse(mydata)
  x$getinverse(m)
  m
}
