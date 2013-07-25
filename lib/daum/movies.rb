module Daum
  class Movies < Array
    class << self
      def search(query, options = {})
        uri = URI.parse('http://apis.daum.net/contents/movie.json')
        params = {
          apikey: Daum.api_key,
          q: query,
          result: options[:per_page] || 10,
          pageno: options[:page] || 1
        }
        uri.query = URI.encode_www_form(params)

        res = Net::HTTP.get_response(uri)
        if res.is_a?(Net::HTTPSuccess)
          movies = Movies.new(res.body)
        end

        movies
      end
    end

    attr :total_count, :page, :query
    def initialize(json)
      objs = JSON.parse(json)["channel"]
      @total_count = objs["totalCount"]
      @query = objs["q"]
      @page = objs["page"]

      movies = objs["item"].map {|item| Movie.new(item)}
      super(movies)
    end

  end
end