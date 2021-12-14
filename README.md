# 스프링JWT, 리엑트, Docker, AWS 배포

### 실행 순서
- AWS 접속
- github에서 다운로드
- sudo apt-get install maven
- cd devops-v1/backend
- mvn clean package
- cd ..
- docker-compose up -d

### 주의할 점
- maven이나 gradle은 사실 travis나 github action에서 실행해서 jar파일을 생성해서 AWS S3로 배포하고 codedeploy로 ec2로 옮기는 것이 좋다.
- 하지만 지금은 CI를 연습하는 것이 아니기 때문에 AWS에서 직접 JAR파일을 생성하는 예제이다.

### 도커와 CI도구 이용
- 상식적으로 도커를 사용하면서 CI를 사용하려면...
- AWS EC2에 Docker를 설치해야 하는데...
- 엘라스틱빈스톡으로 Docker 환경으로 서버를 설치하는 것이 훨씬 편하다.
- 그리고 github에 코드를 업로드하면 (docker-compose.yml 함께)
- travis가 낚아채서 테스트 후 jar파일 만들고 zip파일로 묶은 뒤
- codedeploy에서 zip파일을 엘라스틱빈스톡에 배포한다. (자동으로 압축풀림)
- 배포된 파일을 docker-compose up -d 로 실행