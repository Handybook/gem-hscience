$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hyper_science/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hyper_science"
  s.version     = HyperScience::VERSION
  s.authors     = ["Alex Yankov", "Jose Rivera"]
  s.email       = ["ayankov@handy.com", "jrivera@handy.com"]
  s.homepage    = ""
  s.summary     = "Ruby wrapper for HyperScience RESTful API."
  s.description = "A simple Ruby wrapper for the HyperScience RESTful API."

  s.files = Dir["{lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_development_dependency "rspec-rails"
end
