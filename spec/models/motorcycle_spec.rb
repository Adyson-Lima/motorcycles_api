require 'rails_helper'

RSpec.describe Motorcycle, type: :model do

  before{@motorcycle = Motorcycle.new}

  describe 'Testes de preenchimento dos campo do model Motorcycle' do

    it 'name consegue ser preenchido?' do
      @motorcycle.name = 'harley davidson'
      expect(@motorcycle.name).to eq('harley davidson')
    end

    it 'category consegue ser preenchido?' do
      @motorcycle.category = 'estradeira'
      expect(@motorcycle.category).to eq('estradeira')
    end

  end

  describe 'Testes de validacao dos campo do model Motorcycle' do

    it 'objeto motorcycle valido com campos obrigatorios preenchidos?' do
      @motorcycle.name = 'cg'
      @motorcycle.category = 'moto para trabalho'
      expect(@motorcycle).to be_valid
    end

    it 'objeto motorcycle invalido com campos obrigatorios não preenchidos?' do
      motorcycle = Motorcycle.new
      expect(motorcycle).to be_valid
    end

  end

end