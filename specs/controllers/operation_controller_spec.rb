require_relative '../../controllers/operation_controller'
require_relative '../spec_helper'

RSpec.describe OperationController do
  include Rack::Test::Methods

  let(:user_id) { User.where(id: 2).first }
  let(:first_product) { Product.where(id: 2).first }
  let(:second_product) { Product.where(id: 3).first }
  let(:third_product) { Product.where(id: 4).first }
  let(:positions) do
    [
      {
        "id": first_product.id,
        "price": 100,
        "quantity": 3
      },
      {
        "id": second_product.id,
        "price": 50,
        "quantity": 2
      },
      {
        "id": third_product.id,
        "price": 40,
        "quantity": 1
      },
      {
        "id": 404,
        "price": 150,
        "quantity": 2
      }
    ]
  end

  before do
    #TODO we should clean the dirty tables
  end

  it do
    post '/operation', { user_id: user_id, positions: positions}, { 'HTTP_HOST' => 'localhost' }
    expect(last_response).to be_ok
  end
end
