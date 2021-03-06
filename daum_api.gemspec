# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "daum_api"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chang Shin"]
  s.date = "2013-07-25"
  s.description = "It helps for ruby to use daum api, now it just supports movies' search."
  s.email = "aproxacs@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "daum_api.gemspec",
    "lib/daum.rb",
    "lib/daum/movie.rb",
    "lib/daum/movies.rb",
    "lib/daum_api.rb",
    "spec/daum/movie_spec.rb",
    "spec/daum/movies_spec.rb",
    "spec/fixtures/movie_amour.yml",
    "spec/fixtures/movie_love.yml",
    "spec/fixtures/vcr_cassettes/movies_search.yml",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/aproxacs/daum_api"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "ruby daum api helper"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hashie>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<webmock>, [">= 0"])
      s.add_development_dependency(%q<vcr>, [">= 0"])
      s.add_development_dependency(%q<ZenTest>, [">= 0"])
      s.add_development_dependency(%q<autotest-fsevent>, [">= 0"])
      s.add_development_dependency(%q<autotest-growl>, [">= 0"])
    else
      s.add_dependency(%q<hashie>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<webmock>, [">= 0"])
      s.add_dependency(%q<vcr>, [">= 0"])
      s.add_dependency(%q<ZenTest>, [">= 0"])
      s.add_dependency(%q<autotest-fsevent>, [">= 0"])
      s.add_dependency(%q<autotest-growl>, [">= 0"])
    end
  else
    s.add_dependency(%q<hashie>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<webmock>, [">= 0"])
    s.add_dependency(%q<vcr>, [">= 0"])
    s.add_dependency(%q<ZenTest>, [">= 0"])
    s.add_dependency(%q<autotest-fsevent>, [">= 0"])
    s.add_dependency(%q<autotest-growl>, [">= 0"])
  end
end

