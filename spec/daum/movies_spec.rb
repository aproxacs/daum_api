require "spec_helper"

describe Daum::Movies do

  let(:api_key) { "DAUM_CONTENTS_DEMO_APIKEY" }  
  before do
    Daum.api_key = api_key
  end

  describe ".search" do
    let(:query) { "love" }
    let(:movies) { Daum::Movies.search(query) }
    
    before do 
      VCR.use_cassette('movies_search') do
        movies
      end
    end

    subject { movies }

    its(:total_count) { should == 18 }
    its(:length) { should == 10 }
    its(:query) { should == query }
    its(:page) { should == 1 }

    it "each iterates movie which is Movie instance" do
      movies.each do |movie|
        movie.should be_instance_of(Daum::Movie)
      end
    end

    it "sends daum contents api request" do
      a_request(:get, "http://apis.daum.net/contents/movie.json")
          .with(:query => hash_including(q: query, apikey: api_key)).should have_been_made
    end

  end


end