class MapQuery

  def initialize(cafe_param)
    @cafe_param = cafe_param
  end

  def uri
    address = URI.encode_www_form({address: @cafe_param})
    URI.parse("https://maps.googleapis.com/maps/api/geocode/json?#{address}&key=#{ENV["MAP_API_KEY"]}")
  end

  def result
    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body)
  end
end
