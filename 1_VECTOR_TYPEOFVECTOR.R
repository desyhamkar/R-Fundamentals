#Exercise 1

#Task 1: Write a R program to create a vector of a specified type and length. Create vector of numeric, complex, logical and  character types of length 10.
#numeric vector
vector_a<- c(1,2,3,4,5)
typeof(vector_a)
length(vector_a)

#logical
vector_b <- c(T,T,T,T,T,F,F,F,F,F)
typeof(vector_b)
length(vector_b)

#complex
vector_c <- c( T, 5L, 3.14, 8+9i )
typeof(vector_c)
length(vector_c)

#Character
vector_d <- c(1,2,3,4,5,"six",'7','EIGHT')
typeof(vector_d)
length(vector_d)

#Task 2: Write a R program to append value to a given empty vector.
emptyvector <- sample(10)
emptyvector

#Task 3: Write a R program to find Sum, Mean and Product of a Vector, ignore element like NA or NaN.
E <- c(1:100, NA, NaN)
E
function()
#SUM
print("SUM vector: " )
sum(E, na.rm =T)
#MEAN
mean(E, na.rm =T)
#PRODUCT
prod(E, na.rm =T)


#Task 4: Write a R program to sort a Vector in ascending and descending order. 
vector1<- sample(1:100, 100)
print("Descending order: " )
sort(vector1, decreasing=T)
print("Ascending order: " )
sort(vector1, decreasing=F)


#Task 5: Write a R program to count the specific value in a given vector.
vector2<- c(1, 1, 4, 4, 1, 3, 9, 9, 8,10)
length(which( vector2 == 9))

#Task 6: Write a R program to find second highest value in a given vector.
vector3<- c(1:100)
vector3

sort(vector3, decreasing=T)[2]

#Task 7: Write a R program to find nth highest value in a given vector.
vector4<- sample(1:100, 10)
vector4
print('HIGEST value in the vector above')
sort(vector4, decreasing = F)[10]

#Task 8: Write a R program to find common elements from multiple vectors.
vector1<- sample(1:20, 10)
print(vector1)

vector2<- c(1:5)
vector2
intersect(vector1, vector2)


#Task 9: Write a R program to list the distinct values in a vector from a given vector.
a1<- c(1, 1, 2, 2, 2, 2, 3, 9, 9,10)
unique(a1)

#Task 10: Write a R program to find the elements of  a given vector that are not in another given vector.
vector1<- sample(1:20, 5)
print(vector1)
vector2<- c(1:10)
vector2 

setdiff(vector1, vector2)

#Task 11: Write a R program to reverse the order of given vector.
vector1<- c(1:20)
vector1
rev(vector1)

#Task 12: Write a R program to concatenate a vector.
vector1<- c('Your ', 'Own ', 'Name')
paste(vector1, collapse = '')

#Task 13: Write a R program to take input from the user (name and age) and display the values.
Name <- readline(prompt=" Full Name? ")
Age <- readline(prompt=" Age ? ")
Age <- as.integer(Age)
print(paste('Your name is:', Name,'and', 'your age is: ', Age))


#Task 14: Write a R program to create a vector which contains 10 random integer values between -10 and +10.
set.seed(100)
a<- sample(-10:10, 10, replace=T)
a

#Task 15: Write a R program to extract first 5 english letter in lower case and last 5 letters in upper case and extract letters between 20nd to 22th letters in upper case.
letter <- LETTERS
letter
lower <- head(letters,10)
print(lower)
upper<- tail(LETTERS,10)
print(upper)
tail_10_15<- tail(LETTERS[10:15])
print(tail_10_15)

#Task 16: Write a R program to get the unique elements of a given string.
a1<- sample(1:100, 10, replace=T)
a1
length(unique(a1))

length(a1)
unique(a1)


