class NationalParksController < ApplicationController

  def index
    national_parks = NationalPark.all
    render json: national_parks.as_json
  end

  def create
    national_park = NationalPark.new(
      name: params[:name], 
      size_square_miles: params[:size_square_miles],
      state: params[:state],
      date_founded: params[:date_founded],
      map_image: params[:map_image]
    )

    national_park.save
    render json: national_park.as_json
  end

  def destroy
    national_park = NationalPark.find_by(id: params[:id])
    national_park.delete
    render json: { message: "park removed" }
  end
  
end
