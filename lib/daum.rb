module Daum
  mattr_accessor :api_key
  def configure
    yield self
  end
end