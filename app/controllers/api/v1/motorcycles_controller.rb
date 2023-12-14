class Api::V1::MotorcyclesController < ApplicationController

  before_action :set_motorcycle, only: %i[show update destroy] # show update destroy

  def index
    @motorcycles = Motorcycle.all 
    render json: @motorcycles
  end

  def show
    render json: @motorcycle
  end

  def create
    @motorcycle = Motorcycle.new(motorcycle_params)
    if @motorcycle.save
      render json: @motorcycle, status: :created, location: api_v1_motorcycle_url(@motorcycle)
    else
      render json: @motorcycle.errors, status: :unprocessable_entity
    end
  end

  def update
    if @motorcycle.update(motorcycle_params)
      render json: @motorcycle
    else
      render json: @motorcycle.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @motorcycle.destroy!
  end

private

def set_motorcycle
  @motorcycle = Motorcycle.find(params[:id])
end

def motorcycle_params
  params.require(:motorcycle).permit(:name, :category)
end
  
end