## Defining a function that will provide output of inverse matrix 

## If the inverse of matrix value exists than it will give output otherwise null

makeCacheMatrix <- function(x = matrix()) {
  
  ini<-NULL
  set<-function(y){
    x<<-y
    ini<<-NULL
  }
  get<-function()x
  setinverse<-function(inverse) ini<<-inverse
  getinverse<-function()ini
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
  
  
}


## This function will search for the inverse value of matrix if it already exists
## If the inverse value is not found then this function calculates the inverse
## After providing the output of inverse of matrix it saves the value to be used in future

cacheSolve <- function(x, ...) {
  ini<-x$getinverse()
  if(!is.null(ini)){
    message("getting cache data")
    return(ini)
  }
  dat<-x$get()
  ini<-solve(dat,...)
  x$setinverse(ini)
  ini
}

## Return a matrix that is the inverse of 'x'
}
