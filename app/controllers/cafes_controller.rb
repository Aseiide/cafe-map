class CafesController < ApplicationController
  def create
    address = params[:cafe]
    params = URI.encode_www_form({address: address})
    uri = URI.parse("https://maps.googleapis.com/maps/api/geocode/json?#{params}&key=#{ENV["MAP_API_KEY"]}")
    response = Net::HTTP.get_response(uri)
    @result = JSON.parse(response.body)
    @cafe = Cafe.new(
      address: cafe_params,
      latitude: @result["results"][0]["geometry"]["location"]["lat"],
      longitude: @result["results"][0]["geometry"]["location"]["lng"]
    )
    binding.pry
    #保存
    @cafe.save
    redirect_to cafes_path
  end
  def cafe_params
    params.require(:cafe).permit(:address, :latitude, :longitude)
  end
end
