class Admin::CafesController < Admin::BaseController
  def new
    def location
      params[:location]
    end
    params = URI.encode_www_form({address: location})
    uri = URI.parse("https://maps.googleapis.com/maps/api/geocode/json?address=#{params}&key=#{ENV["MAP_API_KEY"]}")
    response = Net::HTTP.get_response(uri)
    result = JSON.parse(response.body)
    @latitude = result["results"][0]["geometry"]["location"]["lat"]
    @longitude = result["results"][0]["geometry"]["location"]["lng"]
  end
end
