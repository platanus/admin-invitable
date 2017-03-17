require 'simplecov'
require 'coveralls'

formatters = [SimpleCov::Formatter::HTMLFormatter, Coveralls::SimpleCov::Formatter]
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter::new(formatters)

SimpleCov.start do
  add_filter do |src|
    r = [
      src.filename =~ /lib/,
      src.filename =~ /models/,
      src.filename =~ /controllers/
    ].uniq
    r.count == 1 && r.first.nil?
  end

  add_filter "engine.rb"
  add_filter "spec.rb"
end

ENV["RAILS_ENV"] ||= 'test'

require File.expand_path("../dummy/config/environment", __FILE__)
require 'rspec/rails'
require 'spec_helper'
require 'factory_girl_rails'

ENGINE_RAILS_ROOT=File.join(File.dirname(__FILE__), '../')
Dir[File.join(ENGINE_RAILS_ROOT, "spec/support/**/*.rb")].each {|f| require f }

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.order = :random
  config.render_views
  config.include FactoryGirl::Syntax::Methods

  FactoryGirl::SyntaxRunner.send(:include, RSpec::Mocks::ExampleMethods)
end
