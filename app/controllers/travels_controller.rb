class TravelsController < ApplicationController
  respond_to :json

  def index
    respond_with(Travel.all)
  end
end
