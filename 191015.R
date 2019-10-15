#통계함수
a <- c(2, 7, 5, 3, 1, 4, 6)
sum(a) 
prod(a)
max(a)
min(a) 
diff(a)
which.max(a) 
which.min(a)
range(a)
mean(a)
median(a)
sd(a)
var(a)
quantile(a) 
#사분위수 정의 써달ㄹ


#수학 연산
log(a)
log(a, base=2)
exp(a)
sqrt(a)
abs(a)
round(sqrt(a),3)
floor(sqrt(a)) #이것도 보고서에 써라
ceiling(sqrt(a))
cumsum(a)
cumprod(a)
cummin(a)
cummax(a)

#집합
b <- c(1,2,10)
union(a, b) #문자열도 가능
intersect(a, b)
setdiff(a, b)
is.element(a, b)
setequal(a,b)

c<-c("hello","world","r","program")
d<-c("hi","world","r","coding")
intersect(c,d)
setdiff(c,d)

pmin(c(2, 8, 3), c(3, 4, 5), c(5, 2, 9)) 
pmax(c(2, 8, 3), c(3, 4, 5), c(1, 2, 3)) 

z <- matrix(c(1,5,6,2,3,2,0,2,5),ncol=3)
z
min(z[,1],z[,2],z[,3])
pmin(z[,1],z[,2],z[,3])



#확률분포
#Dist     pmf       cdf       quantiles    RandomNumbers
Normal    dnorm()   pnorm()   qnorm()      rnorm()
Chi sq    dchisq()  pchisq()  qchisq()     rchisq()
Binomial  dbinom()  pbinom()  qbinom()     rbinom()

dbinom(x=, size, prob=)

#예제
#5개 중 하나를 택하는 선다형 문제가 20문항 있는 시험에서 랜덤하게 답을 써넣는 경우에 대해 다음 물음에 답하여라.
#(a) 정답이 하나도 없을 확률은 얼마인가?
dbinom(x=0,size=20,prob=0.2)
#(b) 8개 이상의 정답을 맞힐 확률은 얼마인가?
1-pbinom(q=7,size=20,prob=0.2)
#(c) 4개부터 6개 사이의 정답을 맞힐 확률은 얼마인가?
pbinom(q=6,size=20,prob=0.2)-pbinom(q=3,size=20,prob=0.2)

#P(Z < -1.9 또는 Z > 2.1)을 구하여라
pnorm(q=-1.9,mean=0,sd=1) + 1-pnorm(q=2.1,mean=0,sd=1)

#sorting
x <- c(12, 5, 3, 9)
sort(x)
sort(x, decreasing = T)
rev(x)
rank(x)
rank(-x)
order(x)

#행렬
a <- matrix(c(1,2,3,4),ncol=2,byrow=TRUE)
b <- matrix(c(1,0,-1,1),ncol=2)
a %*% b

a <- matrix(c(1,1,-1,1),nrow=2,ncol=2)
b <- c(2,4)
solve(a,b)
b=solve(a)
c<-solve(a)
a%*%c

t(a)
det(a)
eigen(a)
diag(a)
diag(3)
diag(c(1,2,3))
diag(10,3,4)
svd(a)

m <- matrix(c(1:9),nrow=3,byrow=TRUE)
m 
sweep(m,1,c(1,4,7),"+")
s <- matrix(1:12, 3, 4)
s
sweep(s,2,colMeans(s)) #각 원소별로 열평균으로부터의 편차

#문자열 다루기
nchar("South Pole")
paste("North","Pole")
paste("North","Pole",sep="-")
substr("Equator",3,5)
strsplit("6-16-2011",split="-")
tolower("Hello")
toupper("Hello")
str_rim("  Hello World!  ",side="left")

#substr 이용하여 Today is Monday를 Sunday로 바꾸기
string_1 = "Today is Monday"
substr(string_1,10,12)<-"Sun"
string_1

#문자열 찾기 (기본)
grep("P",c("Equator","North Pole","South Pole"))
grepl("Pole",c("Equator","North Pole","South Pole"))
regexpr("Pole",c("Equator","North Pole Pole","South Pole"))
gregexpr("Pole",c("Equator","North Pole Pole","South Pole"))
regexec("Pole",c("Equator","North Pole","South Pole"))
regexpr("uat","Equator")
gregexpr("iss","Mississippi")
#옵션 : value, invert, ignore.case, fixed ????????????????????


#문자열 찾기 (패키지)
install.packages("stringr")
library(stringr)

fruit <- c("apple", "banana", "cherry")
str_count(fruit, "a")
str_detect(fruit, "a")
str_locate(fruit, "a")
str_locate_all(fruit, "a")

people <- c("rorori", "emilia", "youna")
str_extract(people, "o(\\D)")   #\\D는 non-digit character를 의미합니다.
str_extract_all(people, "o(\\D)")
str_match(people, "o(\\D)(\\D)")
str_match_all(people, "o(\\D)")

#문자열 찾아서 바꾸기
fruits <- c("one apple", "two pears", "three bananas")
sub("[aeiou]", "-", fruits)
str_replace(fruits, "[aeiou]", "-")
gsub("[aeiou]", "-", fruits)
str_replace_all(fruits, "[aeiou]", "-")
