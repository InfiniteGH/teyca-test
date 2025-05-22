require 'sequel'
require_relative '../config/database'

class User < Sequel::Model
  many_to_one :template
end