class TravelsController < ApplicationController
  respond_to :json

  def index
    respond_with(Travel.all)
  end

  def create
    travel = Travel.new(travel_params)
    travel.save
    respond_with(travel)
  end

  private

  def travel_params
    params.require(:travel).permit(:header, :description, :image_src)
  end
end
