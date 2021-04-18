class Map

  def initialize(cafe_params)
    @cafe_params = cafe_params
  end

  def result
    shop = @cafe_params
    address_parameter = URI.encode_www_form({address: shop})
    uri = URI.parse("https://maps.googleapis.com/maps/api/geocode/json?#{address_parameter}&key=#{ENV["MAP_API_KEY"]}")
    # ここでAPIをcallしたときに、緯度経度を返すというmockを作りたい
    response = Net::HTTP.get_response(uri)
    @result = JSON.parse(response.body)
  end
end
