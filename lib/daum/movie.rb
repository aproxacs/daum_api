module Daum
  class Movie

    ARRAY_MAPPING = {
      genres: :genre,
      actors: :actor,
      keywords: :kword,
      age_grades: :age_grades,
      nations: :nation
    }

    ARRAY_MAPPING.each do |name, value| 
      define_method name do 
        key = "@#{name}"
        if instance_variable_defined?(key)
          instance_variable_get(key)
        else
          val = @sources.send(value).map(&:content).reject(&:empty?) rescue []
          instance_variable_set(key, val)
          val
        end
      end
    end

    VALUE_MAPPING = {
      title: :title, 
      story: :story, 
      wiki_info: :wiki_info, 
      year: :year, 
      director: :director,
      category: :category,
      thumbnail: :thumbnail,
      eng_title: :eng_title,
      original_title: :ogr_title,
      wiki_url: :wiki_url
    }

    VALUE_MAPPING.each do |name, value|
      define_method name do 
        key = "@#{name}"
        if instance_variable_defined?(key)
          instance_variable_get(key)
        else
          val = @sources.send(value).map(&:content).first rescue ""
          instance_variable_set(key, val)
          val
        end
      end
    end      

    attr_reader :sources
    def initialize(source_hash)
      @sources = Hashie::Mash.new(source_hash)
    end

    def photos
      @photos ||= (1..5).map{|i| @sources.send("photo#{i}").first.content}
    end

    # 평점
    def grade
      @sources.grades.first.content.to_f
    end

    # 평점 참여자 수 
    def grade_participants
      @sources.grades.last.content.to_i
    end

    def open_info
      @open_info ||= @sources.open_info.map(&:content)
    end

  end
end