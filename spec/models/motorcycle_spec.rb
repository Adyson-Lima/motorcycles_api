require 'rails_helper'

RSpec.describe Motorcycle, type: :model do

  before{@motorcycle = Motorcycle.new}

  describe 'Testes de preenchimento dos campo do model Motorcycle' do

    it 'name consegue ser preenchido?' do
      @motorcycle.name = ''
      expect(@motorcycle.name).to eq('harley davidson')
    end

  end

end