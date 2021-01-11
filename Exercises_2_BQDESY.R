#BQ DESY HARDIANTI  
#EXERCISE 2

In all below tasks create your own toy objects i.e. named vectors, non-empty vectors and lists etc.

#Task 1: Write a R program to find the levels of factor of a given vector.
vector1 <- factor (c("student", "lecturer", "lecturer", "student", "employee", "manager", "employee"))
vector1

#Task 2: Write a R program to change the first level of a factor with another level of a given factor.
vector1
vector1[2] <- "student"
vector1[3] <- "student"
vector1

#Task 3: Write a R program to create an ordered factor from data consisting of the names of months.
names_month <- factor(c("Jan", "Feb", "Mar", "Apr","Mei", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
names_month

#Task 4: Write a R program to concatenate two given factor in a single factor. 
a1 <- factor(c("A","C","B","Z","E"))
a2 <- factor(c("1","2","3","4","5"))
a1
a2
concate_a <- paste( a1, a2, sep = "" )
concate_a

#Task 5: Write a R program to count the specific value in a given vector.
vector2 <- c(1,3,5,7,9,1,1,3,5)
vector2
as.data.frame(table(vector2))

#specific value example we want to count how many time number 3 appears
vector3 <- table(vector2)
vector3[names(vector3)==3]

#Task 6: Write a R program to extract the five of the levels of factor created from a random sample from the LETTERS.
letter1 <- factor(c(LETTERS))
letter1
print("Print only 5 Levels")
print(table(a[1:5]))
#OR 
letter2 <- factor(c(LETTERS[1:5]))
letter2

#Task 7: Write a R program to create a list containing strings, numbers, vectors and a logical values.
mylist <- list("Bq", "Desy", 100.123, c(1,5,10,15,20), TRUE,FALSE )
print(mylist)

#Task 8: Write a R program to list containing a vector, a matrix and a list and give names to the elements in the list.
# List containing a vector, a matrix and a list.
mylist<- list(c("BQ","DESY","HARDIANTI"), matrix(c(1,3,5,7,9,11), nrow = 2),list("Student","s204951"))
mylist

# Give names to the elements in the list.
names(mylist) <- c("A Vector", "A Matrix", "A list")
# Show the list.
print(mylist)


#Task 9: Write a R program to select second element of a given nested list.
#using mylist
sapply(mylist,"[[",2)

#Task 10: Write a R program to create a list containing a vector, a matrix and a list and update the last element.
list_1 <- list(c("BQ","DESY","HARDIANTI"), matrix(c(1,3,5,7,9,11), nrow = 2),list("Student","s204951"))
list_1
   #update the last element
list_1[3] = "Learning R"
print(list_1)

#Task 11: Write a R program to merge two given lists into one list.
list_a <- list(1,2,3,4,5)
list_b <- list("Alpha","Beta","Gamma","Theta","Omega")
list_a
list_b
merge_list <- c(list_a,list_b)
print(merge_list)

#Task 12: Write a R program to convert a given list to vector.
vector_a = unlist(list_a)
vector_b = unlist(list_b)
print(vector_a)
print(vector_b)

#Task 13: Write a R program to count number of objects in a given list.
list_1 <- list(c("BQ","DESY","HARDIANTI"), matrix(c(1,3,5,7,9,11), nrow = 2),list("Student","s204951"))
list_1
length(list_1)

#Task 14: Write a R program to assign NULL to a given list element.
list_c <- list(1,2,1,2,5)
list_c

list_c[1] = list(NULL)
list_c[3] = list(NULL)
list_c

#Task 15: Write a R program to Add 10 to each element of the first vector in a given list.
list_c <- list(A=1:5,B=6:20)
list_c
 #newlist
list_d = list_c$A + 10
list_d

#Task 16: Write a R program to get the length of the first two vectors of a given list.
length(list_c$A)
length(list_c$B)
#Task 17: Write a R program to find all elements of a given list that are not in another given list
list_e = list("A","B","C","D","E")
list_f = list("A","B","C","D","E","a","b","c","d","e",1,2,3,4)
list_e
list_f

setdiff(list_f, list_e)
