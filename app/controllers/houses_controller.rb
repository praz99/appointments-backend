class HousesController < ApplicationController
  def index
    @houses = House.all
    json_response(@houses)
  end

  def show
    @house = House.find(params[:id])
  end
end
