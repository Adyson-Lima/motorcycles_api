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

  describe 'GET /api/v1/motorcycles/id' do
    it 'Consegue listar um motorcycle especifico e retornar status 200?' do
      get :show, params: {id: @motorcycle.id}
      expect(response.body).to include_json(name: 'bis')
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/motorcycles' do
    it 'Consegue criar uma motorcycle e retornar status 201?' do
      post :create, params: {motorcycle: {name: 'fan', category: 'moto de trabalho'},format: :json}
      expect(response.body).to include_json(name: 'fan')
      expect(response).to have_http_status(201)
    end
  end

  describe 'PATCH /api/v1/motorcycles/id' do
    it 'Consegue atualizar um motorcycle e retornar status 200?' do
      motorcycle = Motorcycle.last
      patch :update, params: {motorcycle: {name: 'Shadow', category: 'estradeira'},id: motorcycle.id}
      expect(response.body).to include_json(name: 'Shadow')
      expect(response).to have_http_status(200)
    end
  end

end