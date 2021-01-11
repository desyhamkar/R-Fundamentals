#BQ DESY HARDIANTI
#Exercise_1:
#a) Create the "letter" vector containing upper case letters from the basic alphabet (26 letters).
letter <- LETTERS
letter

#b) Create the "numbers" vector containing consecutive integers from 1 to "n",where "n" is the number of elements from the "letter" vector (do not enter this value manually).
numbers <- 1:length(letter)
numbers

#c) Create the "letters_numbers" vector connecting the "letters" and "numbers" element by element by the sign "_".
letters_numbers <- paste( letter, numbers, sep = "_" )
letters_numbers

#d) Create the attribute on the "letters_numbers" vector indicating the type of the vector.
attr( letters_numbers, "Typ" ) <- typeof( letters_numbers )
letters_numbers

#e) Convert the "letters_numbers" vector to the "Matrix_letters_numbers" matrix of size "2x13" by inserting subsequent elements into rows.  
Matrix_letters_numbers <- matrix(letters_numbers,nrow=2,ncol=13)
Matrix_letters_numbers

#Exercise_2:
#a) Create the "list_2" list with 5 default values.
list_2 <- vector( "list", 5)
list_2

#b) Create the "vector_2" vector by drawing 5 integers (without repeats) from a vector from 1 to 10.
#   The initial value of the random number generator should be set to 123.
set.seed(123)
vector_2 <- sample (1:10, 5, replace = F)
vector_2

#c) Using the "repeat" loop, insert in the next elements of the "list_2" list (list has 5 elements, see point a) 
#   the vector repeating a specific number from the "vector_2" vector (you should get 3,8,4,7,6) 
#   so many times, what number is contained under the investigated element of the vector "vector_2", 
#   e.g. for the number 4 the vector is of length 4 and each element will have number 4.
#Beginning of the result from Exercise_2.

n <- length( list_2 ) 
i <- 1
repeat{
   list_2[[ i ]] <- rep( vector_2[i], vector_2[i] )
   i <- i + 1
   if( i > n ) break
}
list_2


#d) Convert "list_2" list into a vector of integers.
as.integer(do.call( "c", list_2))


#Exercise_3: 
#a) Simulate 30 integers between 10 and 20. The initial value of the random number generator should be set to 444.
set.seed(444)
a <- sample( 10:20, 30, T ) 
a
#b) Pre-allocate a vector of integers with default values.
#   The length of this vector is determined as the length of the simulated vector from the point a).
b <- vector("integer",length(a))
b
#c) Using the for loop, insert the elements of the random vector (point a) into the vector from the point b).
#   The loop should be made in two versions: operating on the indexes of both vectors and on the real values of one of them.

n <- length(a)
   for( i in 1:n ){
      b[i] <- a[i]
      if( i == n ){
         cat(b, "\n", typeof( b))
      }
   }
b
 ######### 
#   In the last step, each loop should display (without using the print() function) the entire vector (point b) and information about its type (line below).
b <- NULL
b
for (i in a){
   b <- c(b,i)
}
b
     
#Exercise_4: 
#a) Import the file Exercise_4.txt into "Tables_4" object.
# set file to read
Tables_4 <- read.table("Exercise_4.txt",header = TRUE, sep="&")
Tables_4
#OR when I put my data at another directory
Table_4 <- read.table("/Users/bqdesy/Documents/R PROGRAMMING/Exercise_4.txt",header = TRUE, sep="&")
Table_4


#b) Give the table the attribute "My_name" informing about your name. Display all table attributes.
attr(Tables_4,"My_name" ) <- "Bq Desy Hardianti"

#c) Convert above table to "List_4" list.
List_4 <- as.list(Tables_4)
List_4

#d) Create a function that converts any numerical input vector into a subtitle vector according to the following rule:
#   if the value is less than or equal to 1.5 - enter "less than 1.5", otherwise "more than 1.5".
#   The function cannot use any loops, only "vectorized" operations.
vector_Tables_4 <- function(x){ 
   ifelse(x <= 1.5, "less than 1.5","more than 1.5") 
   }
vector_Tables_4
#e) Apply the created function on the "List_4" list items from point c).
lapply( List_4, vector_Tables_4 )


#Exercise_5:
#a) Create a vector containing numbers from 1 to 9,
vector_a <- c(1:9)
vector_a

#b) Create a list that matches the length of the vector in point a).
list_a <- vector( "list", length(vector_a))
list_a


#c) With a for loop iterating within the values contained in the vector from point a), insert in the subsequent elements of the list a subset of the vector from point a), so that
#   the first element of the list contains the first element, the second element of the list contains the first and second element, ...,
#  the ninth element of the list contains all elements. A kind of pyramid will be created.

for(i in 1:length(vector_a))
   list_a[[i]] = x[1:i]

print(list_a)
