# 김석재 작성일 : 20.05.13 / 제출일 : 20.05.13

# 문1
d1 <- 1:50
d2 <- 51:100

# 문1.1) d1, d2값 출력
print( d1 ); print( d2 ) 

# 문1.2) d2 길이 출력
length( d2 )

# 문1.3) d1 + d2, d2 - d1, d1 * d2, d2 / d1의 결과 출력
print( d1 + d2 ); print( d2 - d1 ); print( d1 * d2 ); print( d2 / d1 )

# 문1.4) d1, d2 각각의 합 출력
print( sum( d1 )); print( sum( d2 ) );

# 문1.5) d1, d2의 모든 값들의 합 출력
print( sum( d1 ) + sum( d2 ) )

# 문1.6) d2 최대값, 최소값 출력
print( max( d2 ) ); print( min( d2) )

# 문1.7) d2, d1의 각각의 평균값을 구한 후 평균과의 차이 출력
m1 <- mean( d1 ); m2 <- mean( d2 ); avg <- ( sum( d1 ) + sum( d2 ) )/ ( length( d1 ) + length( d2 )  )
print( avg - m1); print( avg - m2 ); print( m2- m1)

# 문1.8) d1 내림차순으로 정렬해서 출력
print( sort( d1, decreasing = TRUE ) )

# 문1.9) d1, d2  오름차순으로 정렬 후 각 10개씩을 추출하여 d3에 저장
t1 <- sort( d1, decreasing = FALSE ); t2 <-  sort( d2, decreasing = FALSE )
d3 <- c( t1[ seq( 1, 50, 5) ],  t2[ seq( 1, 50, 5) ])
print( d3 )


# 문2
v1 <- 51:90
v1
# 문2.1) 60보다 작은 수 모두 출력
print( v1[ v1 < 60] )

# 문2.2) 70보다 작은 수가 몇 개인지 출력
print( length(v1[v1<70]) )

# 문2.3) 65보다 큰 수들의 합 출력
print( sum(v1[ v1 > 65] ) )

# 문2.4) 60보다 크고 73보다 작은 수를 출력
v1[ v1>60 & v1<73]

# 또는
v2 <- v1[ v1 > 60 ]; v3 <- v1[ v1 < 73 ]
print( intersect(v2, v3) )

# 문2.5) 65보다 작거나 80보다 큰 수를 모두 출력
v4 <-  c( v1[ v1 < 65 ] , v1[ v1 > 80 ])
print( v4 )

# 또는
v1[v1<65|v1>80]

# 문2.6) 7로 나누었을때 나머지가 3인 수를 모두 출력
print( v1[ v1 %% 7 == 3 ] )

# 문2.7)  7의 배수들의 값을 0으로 변경
v1[ v1 %% 7 == 0 ] <- 0

# 문2.8) 짝수를 모두 합한 값을 출력
v1 <- 51:90
print( sum( v1[ v1 %% 2 == 0 ] ) )

# 문2.9) 홀수이거나 80보다 큰 수를 모두 출력
print( v1[ v1 %% 2 == 1 | v1 > 80])

# 문2.10) 3과 5의 공배수 출력
print( v1[ v1 %% 3 == 0 | v1 %% 5 == 0] )

# 문2.11) 짝수에 대해서만 2를 곱해서 저장
v1 <- 51:90
v5 <-  v1[ v1 %% 2 ==0 ] * 2
v5

# 또는
v1 <- 51:90
print(v1[v1%%2==0]<-v1[v1%%2==0]*2)

# 문2.12) 7의 배수들을 제거한 후 v1 내용 출력
v1 <- 51:90
v1[ v1 %% 7 == 0] <- NA
v1 <- v1[is.na(v1) == FALSE]
print(v1)

