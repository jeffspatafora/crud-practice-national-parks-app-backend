class NationalParksController < ApplicationController

  def index
    national_parks = NationalPark.new
    render json: national_parks.as_json
  end
end
