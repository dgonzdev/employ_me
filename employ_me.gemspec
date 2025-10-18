Gem::Specification.new do |s|
  s.name        = "employ_me"
  s.version     = "0.0.6"
  s.summary     = "Parse information from job listings"
  s.description = "Parse information from job listings"
  s.authors     = ["dgonzdev"]
  # TODO: Add email
  # s.email       = ""
  s.files       = Dir["{lib}/**/*"]
  s.homepage    =
    "https://rubygems.org/gems/employ_me"
  # TODO: Add license
  # s.license       = ""

  s.add_runtime_dependency "nokogiri", ">= 1.6"
end