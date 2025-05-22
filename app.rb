class App < Sinatra::Base
  require_relative './controllers/operation_controller'
  
  require_relative './models/product' #TODO find more compact way
  require_relative './models/user'
  require_relative './models/template'

  use OperationController

  configure do
    set :protection, except: :host_authorization #TODO set it only for tests
  end
end