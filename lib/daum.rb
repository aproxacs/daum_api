module Daum
  mattr_accessor :api_key
  def configure
    yield self
  end

  autoload :Movies, File.expand_path("../daum/movies", __FILE__)
  autoload :Movie, File.expand_path("../daum/movie", __FILE__)
end
