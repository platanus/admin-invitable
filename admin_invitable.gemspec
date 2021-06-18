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

  s.add_dependency "activeadmin"
  s.add_dependency "devise", ">= 4.6"
  s.add_dependency "devise_invitable", "~> 2.0.0"
  s.add_dependency "rails", "> 6.0"

  s.add_development_dependency "coveralls"
  s.add_development_dependency "factory_bot_rails"
  s.add_development_dependency "letter_opener"
  s.add_development_dependency "rspec_junit_formatter"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "rubocop", "~> 1.9"
  s.add_development_dependency "rubocop-rails"
  s.add_development_dependency "sass-rails"
  s.add_development_dependency "sqlite3"
end
