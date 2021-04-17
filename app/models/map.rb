class Map

  def initialize(cafe_param)
    @cafe_param = cafe_param
  end

  def result
    address_parameter = URI.encode_www_form({address: @cafe_param})
    uri = URI.parse("https://maps.googleapis.com/maps/api/geocode/json?#{address_parameter}&key=#{ENV["MAP_API_KEY"]}")
    response = Net::HTTP.get_response(uri)
    @result = JSON.parse(response.body)
  end

end
