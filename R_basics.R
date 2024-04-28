#DATATYPES IN R

#CHAR
char_value="hello"
print(char_value)
print(class(char_value))  #to check the type of variable 
#here type = class

#NUMERIC
num_val=34.5
print(class(num_val))

#LOGICAL
log_val=TRUE    #true should be in caps
print(class(log_val))

#COMPLEX
complex_val=3+2i
print(class(complex_val))

#OPERATORS IN R

#ASSIGNMENT
#1
a=80
print(a)
#2
b<-80
print(b)
#3
80->c
print(c)

#ARITHMETIC
num1=20
num2=10
#ADDITION
print(num1+num2)
#SUBSTRACTION
print(num1-num2)
#DIVISION
print(num1/num2)
print(num2/num1)
#MULTIPLICATION
print(num1*num2)
#REMAINDER/MODULUS
print(num1%%num2)   #for modulus : %% is used 
#POWER
print(num1**2)

#RELATIONAL
#GREATER
print(num1>num2)
#LESS THAN
print(num1<num2)
#Greater than equal to
print(num1>=num2)
#less than equal to
print(num1<=num2)
#EQUAL TO 
print(num1==num2)
#NOT EQUAL TO 
print(num1!=num2)

#LOGICAL
n1<-TRUE
n2<-FALSE
#AND
print(n1&n2)
#OR
print(n1||n2)

#DATA STRUCTURE IN R

#VECTOR
v=c(1,2,3,4)
print(v)
print(class(v))    #returns type of the elements it contains
print(v*2)         #multiply 2 to each element of v
v1<-c('a','b','c',1,2)   #we can't use heterogeneous values in a vector
print(v1)   #but here it is valid coz internally all will be evaluated as char based on precedence
print(v1[1])   #extracting particular values 
print(v1[3])
print(v1[2:4])  #extracting sub vector
print(v1[1:5])
print(v1[c(2,5)]) #extracting values at particular index using combine 

#LIST
l=list(1,2,3,4)
print(l)
print(class(l))
print(class(l[[2]]))   #to check the class of particular element in a list 
print(l[[2]][1])

#MATRIX
m=matrix(c(1,2,3,4),nrow=2,ncol=2)
print(m)
m1=matrix(c(5,4,3,2,6,7,8,9),nrow=4,ncol=2,byrow=TRUE)
print(m1)
print(m1[1,2])

#ARRAY
#METHOD 1
a=array(c(1,2,3,4),dim=c(2,2))  #creating a 2x2 array
print(a)
#METHOD 2
v1=c(1,2,3,4)
v2=c(5,6,7,8)
a1=array(c(v1,v2),dim=c(2,2,2)) #create an array of 2x2 which contain 2 matrix
print(a1)
a1=array(c(v1,v2),dim=c(3,2,2)) #create an array of 3x2 which contain 2 matrix
print(a1)
print(a1[2,1,2])   #extracting 8 from the array a1

#FACTOR
f=factor(c("red","yellow","green"))
print(f)
f1=factor(c("red","yellow","green","red","yellow","green")) # even after repeating the values the levels 
# will remain same , observe in the output console 
print(f1)

#DATA FRAME 
d=data.frame(first=c("a","b","c"),second=c(1,2,3))
print(d)
g<-d$first[3]
print(g)

#IBUILT FUNCTIONS 
#str()
str(iris)   #tells whole structure of the dataframe 

#head()
print(head(iris))  #prints first 6 entries of the df iris 
print(head(iris,4))  #for pinting first 4

#tail()
print(tail(iris))
print(tail(iris,4))

#table()
print(table(iris$Species))  #here species is a categorical column in the dataframe iris 

#min()
print(min(iris$Sepal.Length))

#max()
print(max(iris$Sepal.Length))

#mean()
print(mean(iris$Sepal.Length))

#range()
print(range(iris$Sepal.Length))

#CONDITIONAL STATEMENTS 
#IF
if(iris$Sepal.Length[1]>3)
{
  print("Greater")
}

#IF_ELSE
if(iris$Sepal.Length[2]<8)
{
  print("Less")
}else{
  print("Greater")
}

#LOOPS
#FOR LOOP
ran<-1:10
for(i in ran)
{
  print(i+2)
}

#WHILE LOOP
i=5
while(i>0)
{
  print(i)
  i=i-1
}

#FUNCTIONS 
func1<-function(x)
{
  print(x*2)
}
func1(10)

