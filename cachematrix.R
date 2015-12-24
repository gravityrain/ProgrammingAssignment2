# makeCacheMatrix creates a special "matrix" object that can cache its inverse.
#cacheSolve computes the inverse of the special "matrix" returned by makeCacheMatrix. 
#If the inverse has already been calculated (and the matrix has not changed),
#  then the cachesolve should retrieve the inverse from the cache.

#makeCacheMatrix should contain following functions:
#setMatrix      set the value of a matrix
#getMatrix      get the value of a matrix
#cacheInverse   get the cahced inverse of the matrix
#getInverse     get the cahced inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {

cache <- NULL #to hold the cached value. If nothing is cached, assign NULL to it.

 setMatrix <- function(y) {
           x <<-y
            cache <<- NULL
        } #Set the value of the matrix.  


getMatrix <- function() {
                x      
                } #get the value of the stored matrix.

 cacheInverse <- function(solve) {
                 cache <<- solve
         } #get the cached inverse of the matrix 
        
    getInverse <- function() {
         cache
         }#get the cached value 

list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
#The makeCacheMatrix function returned a list. The elements (four functions) of the list was defined above. 
 }


#cacheSolve function computes the inverse of the matrix created with makeCacheMatrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse<- x$getInverse()
         if(!is.null(inverse)) {
         message("getting cached data") #show message
         return(inverse)# return the value if a cached value exists 
}

	data <- x$getMatrix()		# getting Matrix
 	inverse <- solve(data, ...)	# to compute inverse with solve() function
 	x$cacheInverse(inverse)	        # to cache the inverse
 
 	inverse 		        # return the inverse as result
}
