class Admin::CafesController < Admin::BaseController
  def index
  end

  def new
    location = params[:location]
    # location->入力される住所,文字列
    params = URI.encode_www_form({address: location})
    uri = URI.parse("https://maps.googleapis.com/maps/api/geocode/json?address=#{params}&key=AIzaSyDU2acEBi2vsAS3MNo8fZVFzB_Ei1qXezg")
    response = Net::HTTP.get_response(uri)
    result = JSON.parse(response.body)
    @latitude = result["results"][0]["geometry"]["location"]["lat"]
    @longitude = result["results"][0]["geometry"]["location"]["lng"]
  end

  def create
  end
end
