#
# 5일차
#
# 0. Open
# 1. Review
# 2. Topic
#   2.1 txt/excel 파일 읽기
#   2.2 자료의 종류
#   2.3 단일 변수 범주형 자료 탐색
#   2.4 단일 변수 연속형 자료 탐색
# 3. Q & A
# 4. Next
# 5. Close
#
# 1. Review
#
# Text File 읽기
setwd( "C:\\workspace\\workspaceR" )  #setwd("directory 경로") : Directory 변경 함수, 파일 저장 경로 설정
df <- read.table( file = "airquality.txt", header = T)
df 
class(df)
#
#  C:\Java\jdk1.8.0_251\ 이후 java 파일 밑 jre1.8.0_251 )    
#  JDK(Java Development Kit), JRE(Java Run-time Environment)
#  Windows menu 우클릭 -> 시스템 클릭 -> 정보 -> 시스템 정보 -> 고급 시스템 설정 -> 환경변수 -> 시스템 변수 -> 새로만들기
#  변수이름 : JAVA_HOME, 변수 값: C:\Java\jdk1.8.0_251 -> 시스템 변수 중 Path 누르고 편집 클릭 -> %JAVA_HOME%bin 추가 ->
#  맨위로 이동 -> 명령 들어가서  java -version 입력            ( C드라이브 밑에 바로 만드는게 나중에 좋음)
#
# Excel 파일 읽기용 패키지 설치
install.packages('xlsx')        # Excel 파일 읽기 패키지
install.packages("rjava")       # Java 실행 패키지

# 기본 패키지 외에 설치된 패키지 사용 ( Library Load)
library(rJava)     # library load 순서는 rJava를 먼저 실행해야 xlsx 실행 가능.
library(xlsx)

df.xlsx <- read.xlsx(file="airquality.xlsx",
                     sheetIndex = 1,
                     encoding = "UTF-8") #( "파일명", "sheet page", "인코딩 종류")
df.xlsx
class(df.xlsx)
str(df.xlsx)
head(df.xlsx)
tail(df.xlsx)



score <- c( 76, 84, 69, 60, 90, 6, 85, 71, 88, 84)
which(score == 69)          # 조건에 만족하는 위치 index
which(score >=85)
max(score)
which.max(score)            # 최고값의 index
min(score)
which.min(score)            # 최소값의 index

idx <- which(score>=60)
score[idx] <-  61
score

idx <- which(df.xlsx[,1:2]=="NA", arr.ind = TRUE) # df,xlsx파일의 1:2번 열의 값이 NA(결측치)
                    # arr.ind = TRUE : 해당 조건의 행/열값을 확인할때
idx
#
#   2.1 txt/excel 파일 읽기
#




















































































