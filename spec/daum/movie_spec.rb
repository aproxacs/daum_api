# -*- encoding : utf-8 -*-

require "spec_helper"

describe Daum::Movie do

  let(:movie_hash) { {} }
  subject(:movie) { Daum::Movie.new(movie_hash) }

  context "for movie Amour" do
    let(:movie_hash) { YAML.load_file(File.expand_path("../../fixtures/movie_amour.yml", __FILE__)) }  
  
    its(:genres) { should == ["드라마", "로맨스/멜로"] }
    its(:actors) { should == ["장 루이 트렝티냥", "엠마누엘 리바", "이자벨 위페르", "알렉상드르 타로"]}
    its(:keywords) { should == []}
    its(:open_info) { should == ["2012.12.19", "15세이상관람가", "127분"]}
    its(:age_grades) { should == ["64", "7.4", "53", "8.5", "1", "9.0", "18", "8.5", "32", "7.8", "42", "9.0"]}
    its(:nations) { should == ["프랑스", "오스트리아", "독일"]}
    its(:grade) { should == 8.0 }
    its(:grade_participants) { should == 117 }

    its(:title) { should == "아무르"}
    its(:story) { should include("행복하고 평화로운 노후를") }
    its(:year) { should == "2012"}

    its(:wiki_info) { should include("2012년 프랑스어 드라마 영화") }
    its(:director) { should == "미카엘 하네케" }
    its(:category) { should == "일반" }
    its(:thumbnail) { should == "http://cfile116.uf.daum.net/C110x160/01500F4E50A4431E278AA9" }
    its(:eng_title) { should == "Love" }
    its(:original_title) { should == "Amour" }
    its(:wiki_url) { should == "http://100.daum.net/encyclopedia/view.do?docid=10XX842171" }

    its(:photos) { should have(5).items}
  end

  context "for movie love" do
    let(:movie_hash) { YAML.load_file(File.expand_path("../../fixtures/movie_love.yml", __FILE__)) }  
  
    its(:genres) { should == ["애니메이션"] }
    its(:actors) { should == ["곽두리"]}
    its(:keywords) { should == []}
    its(:open_info) { should == ["", "", "6분"]}
    its(:age_grades) { should == []}
    its(:nations) { should == ["한국"]}
    its(:grade) { should == 0.0 }
    its(:grade_participants) { should == 0 }

    its(:title) { should == "러브"}
    its(:story) { should include("사랑의 진행에 따른 다섯") }
    its(:year) { should == "2009"}

    its(:wiki_info) { should == "" }
    its(:director) { should == "곽두리" }
    its(:category) { should == "단편" }
    its(:thumbnail) { should == "http://cfile18.uf.daum.net/C110x160/187DAC354E7FA1FF02323E" }
    its(:eng_title) { should == "Love" }
    its(:original_title) { should == "" }
    its(:wiki_url) { should == "" }

    its(:photos) { should have(5).items}
    
  end


end