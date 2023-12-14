class Api::V1::MotorcyclesController < ApplicationController

  #before_action :set_motorcycle, only: %i[] # show update destroy

  def index
    @motorcycles = Motorcycle.all 
    render json: @motorcycles
  end

private

def set_motorcycle
  @motorcycle = Motorcycle.find(params[:id])
end

def motorcycle_params
  params.require(:motorcycle).permit(:name, :category)
end
  
end