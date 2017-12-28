## Watcha clone application
Fake Watcha based on Rails

### 1_0. 영화 정보 (Movie)
- Model : Movie (title, poster, nation, director, genre)
- Controller : movies
- movies#index (root 페이지)
- movies#show(하나의 영화를 상세히 보여주는 페이지)
- CRUD (관리자만 가능)
- 로그인 된 유저는 점수 부여, 댓글 작성 가능
- 댓글(Model : Comment)

### 1_1. 영화 Review
- 로그인 된 유저 : 점수 부여 가능, 리뷰 작성 가능
- rate : rating:integer
- comment : comment:string
- user_id
- movie_id
- Movie has_many :reviews
- review belongs_to :movie
- User has_many :reviews
- review belongs_to :user

### 2. 게시판 (Post-> Scaffold)
- Scaffold : 'rails generate scaffold Model option'
- title:string, content:text user_id:integer
- User has_many :posts
- Post belongs_to :user
- 로그인 안된 유저는 Read만 가능
- 로그인 된 유저는 본인의 글 CRUD 모두 가능
- 관리자는 모든 글 CRUD 가능
- 댓글(Model : Comment)

### 3. 유저 (User -> Devise)
- step 1_0. 관리자와 일반유저 분리
- step 1_1. nickname 컬럼을 추가 함
- step 2. 한글버전
- step 3. View 수정 가능
