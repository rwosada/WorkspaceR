#
# 4일차
#
# 0. Open
# 1. Review
# 2. Topoc
#    2.1 Algorithm 이해
#    2.2 선택구조
#    2.3 반복구조
#    2.4 함수
# 3. Q & A
# 4. Next
# 5. Close
#
# 1. Review
#
# 변수명 / 표준 입력 / 표준 출력
#
# 변수명 부여 방식
numberValue <-  1               # camel 표기법 : 소문자대문자
str_value <- "R Language"       # snake 표기법 : 소문자_소문자
booleanvalue <-  TRUE           #  일반 표기법 : 소문자소문자

# 표준 출력장치에 출력
#
# print() : 자동 줄바꿈( \n, 자동 개행)
numberValue; print( numberValue)
str_value; print(str_value)
booleanvalue; print(booleanvalue)


# cat() : 여러 내용을 출력할 수 있고, 자동 줄바꿈이 일어나지 않는 표준 출력 장치에 출력하는 함수
#
#
# 제어 문자 : 화면에 출력되지 않고 기능을 수행하는 문자
#   \n : 개행 문자(줄바꿈)
#   \t : tab 문자
#
cat( 'Numeric number : ', numberValue, '\n')
cat( 'String : ', str_value, '\n')
cat('Boolean Value : ', booleanvalue, '\n')
print('--------------------------------------')
cat( 'Numeric number : ', numberValue,  '\t',
     'String : ', str_value, '\t',
     'Boolean Value : ', booleanvalue, '\n')
cat('test')

# 출력(output,print) : memory내용을 출력장치(output device)에 전송
# 입력(input) : 입력장치(input device)로 부터 memory로 전송하여 기억
# 표준 Error 표시 : stderr, 표준입력 : stdin, 표준입력 : stdout
# 표준 입력 장치로 부터 입력
# scan() : 표준 입력 장치로 부터 입력 받는 함수
# readline() : 표준 입력 장치로 부터 입력 받는 함수
# edit() : 표준 입력 장치로 부터 표형식으로 입력 받는 함수
input_data <- scan() # 빈줄이 입력될때 까지 숫자를 입력 받는다.
class(input_data)
input_data

input_data <- scan( what=character())       # 문자 입력시 사용
class(input_data)
input_data

input_data <- readline( 'Input data -> ')
class(input_data)
input_data


number1 <-  readline('Input number1 : ')
number2 <-  readline('Input number2 : ')
result <-as.numeric( number1) + as.numeric( number2)
result

#
# 실습 문제 : 두 수를 입력 받아서 다음과 같이 출력
#       입력
#           Input number1 : [10] 
#           Input number2 : [5]
#       출력 결과 
#            10 + 5 = 15
#            10 - 5 = 5
#            10 * 5 = 50
#            10 / 5 = 2
#            10 %% 5 = 0

n1<- as.numeric(readline('Input number1 : '))  # 표준 입력 장비로부터 입력받은 내용을 memory에 저장(쓰기)
n2<- as.numeric(readline('Input number2 : '))
n_add <- n1 + n2
n_sub <- n1 - n2
n_mul <- n1 * n2
n_div <- n1 / n2
n_rem <- n1 %% n2
cat('', n1, '+', n2,'=',n_add,'\n',           # memory에 저장된 내용을 표준 출력 장비로 읽기
    n1, '-', n2,'=',n_sub,'\n', 
    n1, '*', n2,'=',n_mul,'\n', 
    n1, '/', n2,'=',n_div,'\n', 
    n1, '%%', n2,'=',n_rem,'\n')



#
# 2.1 Algorithm 이해
#
# Algorithm : 문제를 해결하기 위한 일처리 순서
#
# Algorithm 요건
#  1. 입력 : 반드시 0개 이상의 입력이 있어야 한다.
#  2. 출력 : 반드시 1개 이상의 출력이 있어야 한다.
#  3. 유한성 : 반드시 끝낼 수 있어야 한다.
#  4. 효과성 : 효과적인 방법으로 정의되어야 한다.
#  5. 명확성 : 명확한 방법으로 정의되어야 한다.
#
# 컴퓨터 프로그램의 구조
#
# - 순차구조 : 시작부터 끝날때 까지 차례대로 수행
# - 선택구조 : 조건에 따라 처리 방향을 바꾸어서 수행
# - 반복구조 : 조건이 만족하는 동안 동일한 내용을 반복 수행
#
# 컴퓨터 프로그램은 알고리즘 기반으로 기억장소 원리와 순차/선택/반복 구조를 조합하여 작성한다.
#
#

#
# 2.2 선택구조
#
#
# 선택 구조 종류
#  1. 단순 선택 구조
#  2. 양자 택일 구조
#  3. 다중 선택 구조
#  4. 증첩 선텍 구조
#
#
# 1. 단순 선택 구조
job.type <- 'A'
bouns <- 0
if (job.type =='A'){        # {} : code block(code 집합)
    bouns <- 200
}
cat('job type : ', job.type, '\t\tbouns : ', bouns)

# 2. 양자 택일 구조
job.type <- 'B'
bouns <- 0
if (job.type =='A'){        # {} : code block(code 집합)
    bouns <- 200
} else{                     # else 바로 안쓰면 Error 발생
    bouns <- 100
}
cat('job type : ', job.type, '\t\tbouns : ', bouns)

# 3. 다중 선택 구조
score <-  95
if(score>=90){
    grade <- 'A'
} else if(score>=80){
    grade <- 'B'
} else if(score>=70){
    grade <- 'C'
} else if(score>=60){
    grade <- 'D'
} else {
    grade <- 'F'
}
cat('score : ', score, '\t\tgrade : ', grade)

# 4. 중첩 선택 구조
a <- 2; b <- 1; c <- 3
if(a>b){
    if(a>c){
        max <- a
        if(b>c){
            mid <- b; min <- c
        } else{
            mid <- c; mind <- b
        } 
    } else if(c>b){
        max <- c; mid <- a; min <- b
    }
} else if(b>c){
    max <- b
    if(a>c){
        mid <- a; min <- c
    } else{
        mid <- c <- min <- a
    }
}
cat('max : ',max,'\tmid : ',mid,'\tmin : ',min)

number <- 10
remainder <- number %% 2

if(remainder==0){
    oddeven <- '짝수'
} else{
    oddeven <- '홀수'
}
cat( 'Number : ', number,'(은)는', oddeven,'이다.')



a <- 5
b <- 20

if(a>5&b>5){
    cat(a,' > 5  and', b,' > 5')
} else{
    cat(a,' <= 5  or', b,' <= 5')
}

a <- 8; b <- 5;c <- 10; max <- a
if(b>max){
    max <- b
}
if(c>max){
    max <- c
}
cat('a = ',a,'b = ',b,'c = ',c,'max = ',max)

a <- 8; b <- 5;c <- 10; min <- a
if(b<min){
    min <- b
}
if(c<min){
    min <- c
}
cat('a = ',a,'b = ',b,'c = ',c,'min = ',min)

#
# 실습 문제 1 : 하나의 숫자를 입력받아 짝수인지 홀수인지 출력
d
lan <- '홀 짝'
if(num%%2==0){
    lan <- '짝수' # cat(num, '는 짝수 입니다.')
} else{
    lan <- '홀수' # cat(num, '는 홀수 입니다.')
}
cat(lan ,'입니다.')




#
# 실습 문제 2: 하나의 숫자를 입력받아 3의 배수이면 " 3의 배수"
#              5의 배수이면 " 5의 배수"
#              3, 5의 베수가 아니면 " 3, 5의 배수가 아닙니다." 출력
#
#
num <- as.numeric(readline('Input Number : '))
if(num%%3==0){
    cat(num,'(은)는 3의 배수 ')
} else if(num%%5==0){
    cat(num,'(은)는 5의 배수 ')
} else{
   cat(num, '(은)는 3, 5의 배수가 아닙니다.' )
}


num <- as.numeric(readline('Input Number : '))
multipe3 = num%%3==0
multipe5 = num%%5==0
if(multipe3){
    cat(num,'(은)는 3의 배수 ')
} else if(multipe5){
    cat(num,'(은)는 5의 배수 ')
} else{
    cat(num, '(은)는 3, 5의 배수가 아닙니다.' )
}




#
# 2.3 반복구조
#
# 반복구조 : 조건에 만족하는 동안 동일한 내용을 반복 수행
#
#   1. 반복횟수가 정해진 경우 : for
#   2. 반복 횟수가 정해지지 않은 경우 : while
#
#   for문 : for( [반복제어변수] in [반복범위]) { }
#
for ( i in 1:10){
    print('*')
}

for ( i in 1:10){
    cat(i,'')
}

multiple = 2
for (i in 2:9){
    cat( multiple,'*',i,'=',multiple * i, '\n')
}

for (i in 2:9) {
    for(j in 1:9){
        multiple = i*j
        cat( multiple, '\t' )
    }
}

#
# 반복 제어 변수 초기화
# while ( 반복 제어 변수 조건 검사) { 
#        반복 제어 변수 값 변경
#  }
#
i=1                    # 반복 제어 변수 초기화
while(i<=10){          # 반복 제어 변수 조건 검사, 참인동안 반복
    print('*')
    i= i+1             # 반복 제어 변수 값 변경, 누적
}

i <- 2
while(i <=9){
    j <- 1
    while(j <=9){
        multiple = i*j
        cat(multiple,'\t')
        j <- j+1
    }
    cat('\n')
    i <- i+1
}


#
# 2.4 함수
#
# 함수(Function) : 단위 기능을 수행하는 코드 집합
#
# 함수 종류
#   1. 내장 함수 : R에 미리 내장된 함수
#   2. 3rd party 함수 : 제 3자가 작성하여 배포한 함수
#   3. 사용자 정의 함수 : 사용자가 직접 정의한 함수
#
# 함수 형식
#
# 함수 정의
#   함수이름 <-  function(인수 목록){
#        함수 내용에 해당하는 코드 집합
#        return( return값)
# }
#
# 함수 호출
#   함수명( 인수 목록)
#

# 함수 정의
multiple <- function(x){
    for( i in 1:9){
        multiple <-  x*i
        cat(x,'*',i,'=',multiple,'\n')
    }
    #return()
}
# 함수 호출
multiple(2)

# return값이 있는 함수
mymax <- function(x,y){
    num.max <- x
    if(y>num.max){
        num.max <- y
    }
    return(num.max)
}

mymax(5,6)

a <- 10;b <- 5;c <- 8
max <- mymax(a,b); max <- mymax(max,c)
max


# return값이 여러개인 함수
myCalc <- function(x,y){
    add <- x + y
    sub <- x - y
    mul <- x * y
    div <- x / y
    rem <- x %% y
    return( list(ret.add = add, ret.sub = sub, ret.mul = mul,
                 ret.div = div, ret.rem = rem))
}
result <- myCalc(10,5)
cat('10 + 5 = ', result$ret.add, '\n')
cat('10 - 5 = ', result$ret.sub, '\n')
cat('10 * 5 = ', result$ret.mul, '\n')
cat('10 / 5 = ', result$ret.div, '\n')
cat('10 %% 5 = ', result$ret.rem, '\n')

myCalc2 <- function(x,y){
    result <- c( x + y, x - y, x * y, x / y, x %% y)
    return( result)
}

myCalc2(10,5)
