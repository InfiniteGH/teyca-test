require 'sequel'
require 'dotenv'

Dotenv.load

DB = ENV['RACK_ENV'] == 'test' ? Sequel.connect('sqlite://test.db') : Sequel.connect('sqlite://production.db')