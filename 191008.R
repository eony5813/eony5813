###필터링####

z <- c(5,2,-3,8)
w<- z[z*z>8]
w

z*z>8
z[c(T,F,T,T)] #TRUE만 추출됨

z[z>3] <-0
z

#is.na(): NA가 있나 없나
x<-c(6, 1:2, NA, 12)
x
is.na(x)

#which() : 조건을 만족하원 원소의 위치
which(x>5) 
y<-which(x>5)
length(y) 

#%in% : 앞벡터가 뒤벡터에 있는지 없는지
x<-c(3,1,4,1)
x %in% c(2,1,4)

#match() : 앞에 있는 원소가 뒤에 벡터에서 어디 위치에 있는지
x<-c(3,1,2,1)
match(x, c(2,1,4))

####CASTING : 자료형 간의 변환##### 

a=0L #L을 붙이면 정수형
typeof(a)
a[2] <- 1
a
typeof(a)

m <- matrix(1:10, 5,2)
m
b = m[,-1] #열이 하나라서 자동으로 벡터로 변환됨
b[5,1]
b = m[,-1, drop=F] #drop=F 써주면 matrix 타입으로 유지됨
class(b)

#matrix -> vector: c()
a = matrix(1:10,5,2)
a
b = c(a)
b

#vector -> factor : as.factor()
a = c('tom', 'jin','jun')
b = as.factor(a)
b

c(b)

#list, data.frame ->vector : unlist()
a=list()
for (i in 1:5) a[[i]] <-i 
a
b<-unlist(a)
b

c=data.frame('age' = c(17,18,19), home = c('seoul', 'busan', 'jeju'))
c
d = unlist(c)
class(d)

#vector -> matrix : as.matrix()
a = 1:4
b = as.matrix(a)
b

#matrix -> data.frame : as.data.frame()
a = matrix(1:10, 5,2)
a
b = as.data.frame(a)
b
class(b)

#data.frame -> list : unclass()
b 
c = unclass(b)
c
class(c)

#as.character() : 문자형으로 바꾸기
#as.numeric() = as.double() : 숫자로 바꾸기

#####반복문#####
#for문 
for(i in 1:9)
{
  result = i*2
  print(result)
}

#while문
i=1
while(i<10)
{
  result = i*2
  print(result)
  i = i+1
}

#repeat문
i=1
repeat{
  result = 2*i
  cat("2x",i,"=", result,"\n")
  if(i>=9) break
  i = i+1
}

#next
for(i in 1:4)
{
  print(i)
  print('cmd1')
  print('cmd2') 
  if(i==3){
    next
  }
  print('cmd3')
}

#break
for(i in 1:4)
{
  print(i)
  print('cmd1')
  print('cmd2') 
  if(i==3){
    break
  }
  print('cmd3')
}  
  
