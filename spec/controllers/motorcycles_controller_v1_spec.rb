require 'rails_helper'

RSpec.describe Api::V1::MotorcyclesController, type: :controller do

  before{@motorcycle = Motorcycle.create(name: 'bis', category: 'leve antiga')}

  describe 'GET /api/v1/motorcycles' do
    it 'Consegue listar todos os motorcycles e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

end