# 김석재 작성일 : 200514 / 제출일 : 200515

# 문1
# >score
# 	    m  f
# [1,] 10 21
# [2,] 40 60
# [3,] 60 70
# [4,] 20 30
#
# 문1.1) 위와 같은 내용의 matrix score를 생성
#
score <- matrix(c(10,40,60,20,21,60,70,30),4,2)
colnames(score) <- c('m','f')
score

#
# 문1.2) score의 열 이름을 가각 male,female로 바꾸시오
#
colnames(score) <-  c('male','female')
score

#
# 문1.3) 2행에 있는 모든 값을 출력
#
score[2,]

#
# 문1.4) female의 모든 값을 출력
#
score[,2]

#
# 문1.5) 3행 2열의 값을 출력
#
score[3,2]

#
# 문2
# R에서 제공하는 state.x77 데이터셋을 이용하여 작성
#
# 문2.1) state.x77을 변환하여 st에 data frame으로 작성
#
str(state.x77)   # matrix 확인
st <- data.frame(state.x77) 
str(st)          # data.frame 확인

#
# 문2.2) st의 내용을 출력 
#
st

#
# 문2.3) st의 열 이름 출력
#
colnames(st)

#
# 문2.4) st의 행 이름 출력
#
rownames(st)

#
# 문2.5) st의 행의 개수와 열의 개수 출력
#
dim(st)

#
# 문2.6) st의 요약 정보 출력
#
str(st)

#
# 문2.7) st의 행별 합계와 평균 출력
#
rowSums(st); apply(st,1,sum)
rowMeans(st); apply(st,1,mean)

#
# 문2.8) st의 열별 합계와 평균 출력
#
colSums(st); apply(st,2,sum)
colMeans(st); apply(st,2,mean)


#
# 문2.9) Florida 주의 모든 정보 출력
#
st['Florida',]

#
# 문2.10) 50개 주의 수입(Income) 정보만 출력
#
st['Income']

#
# 문2.11) Texas 주의 면적(Area)을 출력
#
st['Texas', 'Area']
#
# 문2.12) Ohio 주의 인구(Population)와 입수(Income) 출력
#
cbind(st['Ohio','Population'],st['Ohio','Income']); st['Ohio',c('Population','Income')]
#
# 문2.13) 인구가 5,000 이상인 주의 데이터만 출력
#
st[,'Population'>= 5000]

#
# 문2.14) 수입이 4,500 이상인 주의 인구, 수입, 면적을 출력
#
st['Income' >= 4500,c('Population','Income','Area')]

#
# 문2.15) 수입이 4,500 이상인 주는 몇개인지 출력
#
table(st['Income'] >= 4500)

#
# 문2.16) 전체 면적(Area)이 100,000 이상이고, 결빙일수(Frost)가 120 이상인 주의 정보 출력
#
st['Area' >= 100000 & 'Frost' >=120]

# 문2.17) 인구(Population)가 2,000 미만이고, 범죄율(Murder)이 12미만인 주의 정보 출력
#
st['Population'<2000 & 'Murder' < 12]

#
# 문2.18) 문맹률(Illiteracy)이 2.0 이상인 주의 평균 수입은 얼마인지 출력
#
st["Illiteracy" > 2.0,"Income"]

mean(st["Illiteracy" > 2.0,"Income"])

#
# 문2.19) 문맹률(Illiteracy)이 2.0 미만인 주와 2.0 이상인 주의 평균 수입의 차이 출력
#
a <- st['Illiteracy' > 2.0,'Income']
a
b <- st['Illiteracy' < 2.0,'Income']
b
mean(a)-mean(b)
#
# 문2.20) 기대수명(Life Exp)이 가장 높은 주는 어디인지 출력
#
st[,'Life.Exp' == max(st[,'Life.Exp'])]
#
# 문2.21) Pennsylvania 주보다 수입(Income)이 높은 주들 출력
#
st['Pennsylvania','Income'] # Pennsylvania 의 수입은 4449
st[,'Income'>4449]

st[,'Income'>st['Pennsylvania','Income']]
#
# 문3
#
# R에서 제공하는 mtcars 데이터셋은 자동차 모델에 대한 제원 정보를 담고 있다.
#

#
# 문3.1) 이 데이터셋의 자료구조 출력
#
str(mtcars)
#
# 문3.2) 이 데이터셋의 행의 개수와 열의 개수 출력
#
nrow(mtcars); ncol(mtcars)
#
# 문3.3) 이 데이터셋 열들의 자료형 출력
#
mt <- mtcars
mt
colnames(mt)
#
# 문3.4) 연비(mpg)가 가장 좋은 자동차 모델 출력
#
mt['mpg']
max(mt['mpg']) # max mpg = 33.9
mt[,'mpg' == 33.9]
#
# 문3.5) gear가 4인 자동차 모델 중 연비가 가장 낮은 모델 출력
#
mtcars[,'gear'== 4 & min(mtcars['mpg']) ] 

#
# 문3.6) Honda Civic의 연비(mpg)와 gear 수 출력
#
mtcars['Honda Civic',c('mpg','gear')]

#
# 문3.7) Pontiac Firebird 보다 연비가 좋은 자동차 모델 출력
#
mtcars['Pontiac Firebird','hp'] # Pontiac Firebird의 hp=175
mtcars[,'hp'>175]
#
# 문3.8) 자동차 모델들의 평균 연비 출력
#
apply(mt['mpg'],2,mean)
#
# 문3.9) gear의 수 종류 출력
#
table(mt['gear'])
