ENV['RACK_ENV'] = 'test'

require 'json'
require 'sinatra'
require 'rack/test'
require 'capybara'
require 'capybara/rspec'
require 'capybara/dsl'
require 'byebug'
require_relative '../app/app'
require_relative '../db/db_conn'
require_relative '../db/db_manager'
require_relative '../db/db_csv_import'


Capybara.app = Sinatra::Application
Capybara.save_path = './debug/'

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.include Capybara::DSL

  config.formatter = :documentation

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end

# def app
#   Sinatra::Application
# end

require 'simplecov'
SimpleCov.start do
  add_filter '/spec/'
end
