#Bq Desy Hardianti

#In all below tasks create your own toy objects i.e. named vectors, non-empty vectors and lists etc.

#Task 1: Write a R program to create a blank matrix.
mymatrix <- matrix(,nrow =10, ncol=8)
print(mymatrix)

#Task 2: Write a R program to create a matrix taking a given vector of numbers as input. Display the matrix.
m1 <- c("A", "B", "C", "D","E")
m2 <- c("column1", "column2", "column3", "column4","column5","column6")

new_matrix <- matrix(c(1:30), nrow = 5, byrow = TRUE)
new_matrix

#Task 3: Write a R program to create a matrix taking a given vector of numbers as input and define the column and row names. Display the matrix.
m1 <- c("A", "B", "C", "D","E")
m2 <- c("column1", "column2", "column3", "column4","column5","column6")

new_matrix1 <- matrix(c(1:30), nrow = 5, byrow = TRUE, dimnames = list(m1, m2))
new_matrix1

#Task 4: Write a R program to access the element at 3rd column and 2nd row, only the 3rd row and only the 4th column of a given matrix. 
    #access the element at 3rd column and 2nd row
print(new_matrix1[2,3])

   #access the element only 3rd row 
print(new_matrix1[3,])

  #access the element only the 4th column
print(new_matrix1[,4])


#Task 5: Write a R program to create two 2x3 matrix and add, subtract, multiply and divide the matrixes.
matrix1 <- matrix(c(1,1,2,2,3,3),nrow = 2, ncol = 3)
matrix1

matrix2 <- matrix(c(2,4,6,8,10,12),nrow = 2, ncol = 3)
matrix2
  #add
  result <- matrix1 + matrix2
  result
  
  #subtract
  result <- matrix1 - matrix2
  result
  
  #multiply
  result <- matrix1 * matrix2
  result
  
  #divide
  result <- matrix1 / matrix2
  result

#Task 6: Write a R program to create a matrix from a list of given vectors.
list1 <- list(1,2,3,4,5,"Desy")
list1

matrix_list <- matrix(list1)
matrix_list

#Task 7: Write a R program to extract the submatrix whose rows have column value > 7 from a given matrix.
m1 <- c("A", "B", "C", "D","E","F","G","H","I","J")
m2 <- c("column1", "column2", "column3", "column4","column5","column6","column7","column8","column9","column10")

new_matrix1 <- matrix(c(1:100), nrow = 10, byrow = TRUE, dimnames = list(m1, m2))
new_matrix1

result = new_matrix1[new_matrix1[,1] > 7,]
print(result)

  #OR
result = new_matrix1[new_matrix1[1,8]>7,]
print(result)

#Task 8: Write a R program to convert a given matrix to a list of column-vectors.
matrix_1 <- matrix(1:20, nrow = 4, ncol=5 )
matrix_1
   #become column vector
matrix_vector =  split(matrix_1, rep(1:ncol(matrix_1), each = nrow(matrix_1)))
print(matrix_vector)

#Task 9: Write a R program to find row and column index of maximum and minimum value in a given matrix.
matrix_1 <- matrix(1:20, nrow = 4, ncol=5 )
matrix_1
  #Row and column of maximum value of matrix above
result <- which(matrix_1 == max(matrix_1), arr.ind=TRUE)
result
   #Row and column of maximum value of matrix above
result1 <- which(matrix_1 == min(matrix_1), arr.ind=TRUE)
result1


#Task 10: Write a R program to rotate a given matrix 90 degree clockwise rotation.
matrix90 <- matrix(1:25, nrow = 5,ncol = 5)
matrix90

rotate <- t(apply(matrix90, 2, rev))
rotate

#Task 11: Write a R program to concatenate two given matrices of same column but different rows.
x1 <- matrix(1:20, nrow=4,ncol=5)
x1
x2 <- matrix(21:40, nrow=4, ncol=5)
x2

result <- dim(rbind(x1,x2))
result

#Task 12: Write a R program to convert a given matrix to a 1 dimensional array.
x1 <- matrix(1:20, nrow=4,ncol=5)
x1
  #dimentional array
a <- as.vector(x1)
a

#Task 13: Write a R program to create an 3 dimensional array of 24 elements using the dim() function.
x1 <-  sample(1:10,24,replace = TRUE)
dim(x1) <- c(2,3,4)
print(x1)

#Task 14: Write a R program to create an array of two 3x3 matrices each with 3 rows and 3 columns from two given two vectors. Print the second row of the second matrix of the array and the element in the 3rd row and 3rd column of the 1st matrix.
x1 <- c(1,2,3,4,5)
x2 <- c(10,11,12,13,14,15)
x1
x2
 #2 array with 3x3 matrices
result <- array(c(x1,x2),dim = c(3,3,2))
result
  #Second row of the second matrix of the array
print(result[2,,2])
  #3rd row and 3rd column of the 1st matrix
print(result[3,3,1])

#Task 15: Write a R program to create an array using four given columns, three given rows, and two given tables and display the content of the array..
array_1 =  array(1:30, dim=c(3,4,2))
array_1

#Task 16: Write a R program to create a two-dimensional 5x3 array of sequence of even integers greater than 50.
array_2 <- array(seq(from = 50, length.out = 15, by = 2), c(5, 3))
array_2
