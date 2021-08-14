# New_Sports

## 시작
- 2021 - 07 - 23

## 기본 구현
- 지도 ( 검색, 해당 결과 목록, DB 전체 좌표, 현위치 찾기 등.. )
- 검색 ( CheckBox, RadioBox, Input, Select --> Dropdown 사용한 검색 결과 도출하기 )
- 간단한 회원 관련 구현 ( 로그인, 회원가입, 정보 수정, 회원 탈퇴 등 )
- Q&A ( 문의, 댓글 등의 기능 구현 )

# Git Hub

## 팀원들과의 협업 Git Project
### 프로젝트 만든 사람
  - New Repository를 통해서 만들고
  - Settings -> Manage Access -> Collaborator 추가하기 ( 해당 팀원들에게 Email 발송 )
### Collaborator를 통해서 초대받은 사람
  - 프로젝트 다운받을 폴더 위치 준비하고 Git Bash
  - git clone '다운받을 Repository 주소' '새롭게 지정할 폴더 이름'
### Branch 만들기 - Push 하기
  - git branch 'branch 이름'
  - git checkout 'branch 이름'
  - 코드나 파일 수정 후
  - git add .
  - git commit -m "Comment"
  - git push --set-upstream origin 'branch 이름'
  -   .. 또는 git push -u origin 'branch 이름'
  - 한 번 -u로 주소를 세팅해놓게 되면
  - 다음부터는 git push origin 'branch 이름'으로 push를 해도 상관이 없다
### Pull 하기
  - git pull 'Repository 주소' main
  -   .. 또는 git pull origin main ( -> origin에 Repository 주소가 저장되어 있다.. )
  - 한 번 위의 코드를 실행해놓으면
  -   .. 다음부터는 git pull로 해도 상관이 없다.

