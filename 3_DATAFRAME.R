# CREATING DATA FRAME

In all below tasks create your own toy objects.

#Task 1: Write a R program to create an empty data frame.
df = data.frame(Characters=character(),
                Ints=integer(),
                Doubles=double(),
                stringsAsFactors=FALSE
                )
print(str(df))


#Task 2: Write a R program to create a data frame from four given vectors.
name = c('Bq', 'Desy', 'Hardianti')
nostudent = c(1245, 3456, 1122)
exam = c(80.5, 85.8, 75.3)
approve = c('no', 'yes', 'yes')

print(name)
print(nostudent)
print(exam)
print(approve)
df = data.frame(name,nostudent,exam,approve)  
print(df)

#Task 3: Write a R program to get the structure of a given data frame.
data1 = data.frame(
  name = c('Bq', 'Desy', 'Hardianti'),
  nostudent = c(1245, 3456, 1122),
  exam = c(80.5, 85.8, 75.3),
  approve = c('no', 'yes', 'yes')
  
)

print(str(data1))


#Task 4: Write a R program to get the statistical summary and nature of the data of a given data frame. 
data1 = data.frame(
  name = c('Bq', 'Desy', 'Hardianti'),
  nostudent = c(1245, 3456, 1122),
  exam = c(80.5, 85.8, 75.3),
  approve = c('no', 'yes', 'yes')
  
)

print(summary(data1))

#Task 5: Write a R program to extract 3rd and 5th rows with 1st and 3rd columns from a given data frame.
data1 = data.frame(
  name = c('Bq', 'Desy', 'Hardianti','Arl','Aku'),
  nostudent = c(1245, 3456, 1122, 6677, 7788),
  exam = c(80.5, 85.8, 75.3, 90.3, 70.5),
  approve = c('no', 'yes', 'yes','yes','no')
  
)
result =data1[c(3,5),c(1,3)]
print(result)

#Task 6: Write a R program to add a new column in a given data frame.
data1 = data.frame(
  name = c('Bq', 'Desy', 'Hardianti','Arl','Aku'),
  nostudent = c(1245, 3456, 1122, 6677, 7788),
  exam = c(80.5, 85.8, 75.3, 90.3, 70.5),
  approve = c('no', 'yes', 'yes','yes','no')
  
)
data1$city = c("Warsaw","Torun","Krakow","Granks","Lods")
print(data1)

#Task 7: Write a R program to drop column(s) by name from a given data frame.
data1 = data.frame(
  name = c('Bq', 'Desy', 'Hardianti','Arl','Aku'),
  nostudent = c(1245, 3456, 1122, 6677, 7788),
  exam = c(80.5, 85.8, 75.3, 90.3, 70.5),
  approve = c('no', 'yes', 'yes','yes','no')
  
)
data1= subset(data1,select=-c(exam,approve))
print(data1)

#Task 8: Write a R program to sort a given data frame by multiple column(s).
data1 = data.frame(
  name = c('Bq', 'Desy', 'Hardianti','Arl','Aku'),
  nostudent = c(1245, 3456, 1122, 6677, 7788),
  exam = c(80.5, 85.8, 75.3, 90.3, 70.5),
  approve = c('no', 'yes', 'yes','yes','no')
  
)
data1 = data1[with(data1, order(name, exam)), ]
print(data1)


#Task 9: Write a R program to create inner, outer, left, right join(merge) from given two data frames.
n1 = data.frame(result = c(1111, 3456, 1122, 5432, 7788))
n2 = data.frame(result = c(1245, 3456, 1122, 6677, 7788))

 #Left outer Join
result1 = merge(n1, n2, by = "result", all.x = TRUE)
print(result1)
 #Right outer Join
result1 = merge(n1, n2, by = "result", all.y = TRUE)
print(result1)
 #"Outer Join
result = merge(n1, n2, by = "result", all = TRUE)
print(result1)
 #Cross Join
result1 = merge(n1, n2, by = NULL)
print(result1)


#Task 10: Write a R program to replace NA values with 3 in a given data frame.
data1 = data.frame(
  name = c('Bq', 'Desy', 'Hardianti','Arl','Aku'),
  nostudent = c(1245, 3456, 1122, 6677, 7788),
  exam = c(80.5, NA, 75.3, 90.3, NA),
  approve = c('no', 'yes', 'yes','yes','no')
  
)
data1
data1[is.na(data1)] = 3
print(data1)

#Task 11: Write a R program to compare two data frames to find the elements in first data frame that are not present in second data frame.
n1 = c(1111, 3456, 1122, 5432, 7788)
n2 =  c(1245, 3456, 1122, 6677, 7788)
  
print(n1)
print(n2)
result = setdiff(n1, n2)
print(result)

#Task 12: Write a R program to count the number of NA values in a data frame column.
data1 = data.frame(
  name = c('Bq', 'Desy', 'Hardianti','Arl','Aku'),
  nostudent = c(NA, 3456, 1122, NA, 7788),
  exam = c(80.5, NA, 75.3, 90.3, NA),
  approve = c('no', 'yes', 'yes','yes','no')
  
)
print(data1)
#The number of NA values in exam column
print(sum(is.na(data1$exam)))
