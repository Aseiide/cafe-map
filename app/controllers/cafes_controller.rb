class CafesController < ApplicationController
  def create
    address = params[:cafe]["address"]
    params = URI.encode_www_form({address: address})
    uri = URI.parse("https://maps.googleapis.com/maps/api/geocode/json?address=#{params}&key=#{ENV["MAP_API_KEY"]}")
    response = Net::HTTP.get_response(uri)
    result = JSON.parse(response.body)
    @latitude = result["results"][0]["geometry"]["location"]["lat"],
    @longitude = result["results"][0]["geometry"]["location"]["lng"]
    binding.pry
    @cafe = Cafe.new(
      cafe_params,
      latitude: @latitude,
      longitude: @longitude
    )
    binding.pry
    #保存
    @cafe.save
    redirect_to cafes_path
  end
  def cafe_params
    params.require(:cafe).permit(:address)
  end
end
