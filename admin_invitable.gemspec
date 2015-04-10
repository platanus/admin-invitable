$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "admin_invitable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "admin_invitable"
  s.version     = AdminInvitable::VERSION
  s.authors     = ["Leandro Segovia"]
  s.email       = ["ldlsegovia@gmail.com"]
  s.homepage    = ""
  s.summary     = "Gem to use devise invitable with ActiveAdmin."
  s.description = "AdminInvitable includes a generator to make devise invitable gem work with ActiveAdmin."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "> 4.1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "3.0.1"
  s.add_development_dependency "factory_girl_rails", "4.4.0"
  s.add_development_dependency "guard", "~> 2.7.0"
  s.add_development_dependency "guard-rspec", "~> 4.3"
  s.add_development_dependency "letter_opener"
end
