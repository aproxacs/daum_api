# 이것은

Daum Open API, 그중에서 데이터형 API, 그중에서 영화 검색을 이용할 수 있도록 도와주는 젬이다. 


## 설치 
Gem으로 배포하지는 않았다. 아직은 완성도가 떨어져서 별 실용성이 없다는 생각에..

사용을 위해서는 github를 이용한다.

    gem 'daum_api', git: "git@github.com:aproxacs/daum_api.git"


## 사용 예

#### 초기화 
    Daum.configure do |config|
      config.api_key = "XXX"
    end

API_KEY는 [DNA 개발자 네트워크](dna.daum.net)에서 발급받을 수 있다.

#### 영화 검색
    movies = Daum::Movies.searh("Love", page: 1, per_page: 10)
    puts movies.total_count
    puts movies.query
    puts movies.page
    movies.each do |movie|
      puts movie.genre.map(&:content)
      puts movie.title.first.content
    end

* Daum::Movies는 Array를 상속한 영화들의 Collection이다.
* movies.each 블록의 movie는 Hashie::Mash 객체로 내용은 API의 결과값 중 item의 내용이다.


## 개발에 참여하기
1. 이 리포지토리를 포크한다.
2. 브랜치를 만들어 코드를 수정한다.
3. 수정된 코드를 빌드하고 테스트해본다.
4. 작업한 내용에 대해 풀리퀘스트를 보낸다.

## 버전업
    rake version:bump:patch

### 빌드 & 설치
    rake install


### 테스트 
API를 이용하는 테스트이기에 [webmock](https://github.com/bblimke/webmock)과 [vcr](https://github.com/vcr/vcr)을 이용한다.

vcr 파일들은 `spec/fixtures/vcr_cassettes` 디록토리에 있다.

#### Rspec Test 실행

    bundle exec rspec spec

혹은 autotest를 이용.
    
    bundle exec autotest


## 계획
앞으로 기능들을 더 추가하면 좋겠지만, 그날이 언제일지는 모르겠다.

기능을 추가해 주시면 감사합니다.


