require 'rspec'
require 'rack/test'
require_relative '../app'

def app
  App.new
end