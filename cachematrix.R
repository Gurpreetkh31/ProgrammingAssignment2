## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

library(MASS)
makeCacheMatrix <- function(x = matrix()) {
  set <- function(y) {
    x <<-y
    inv<<-NULL    #initializing inverse as NULL
    }
get<- function()x         #function to get matrix
setinv<- function(inverse)inv<<-inverse
getinv<-function(){
                  inver<-ginv(x)
                  inver%%x        #function to obtain inverse of the matrix
}

list(Set = set, get = get,
     setinv =setinv,
     getinv =getinv)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  {
inv<-x$getinv()
if(!is.null(inv)){        #checking whether inverse in NULL
                  message("getting cached data!")
                  return(inv)                      #returns inverse value
  }
  data<x$get()
  inv<-solve(data,...)           #calculates inverse value
  x$setinv(inv)
  inv       ##returns a matrix that is the inverse of 'x'
  
  }


