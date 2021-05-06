class MapQuery

  def initialize(cafe_param)
    @cafe_param = cafe_param
  end

  def uri
    address = URI.encode_www_form({address: @cafe_param})
    URI.parse("https://maps.googleapis.com/maps/api/geocode/json?address=#{address}&key=#{ENV["MAP_API_KEY"]}")
  end

  def status
    api_response = Net::HTTP.get_response(uri)
    response_body = JSON.parse(api_response.body)
    response_body["status"]
  end

  def result
    api_response = Net::HTTP.get_response(uri)
    response_body = JSON.parse(api_response.body)
    response_body["results"][0]["geometry"]["location"]
  end
end
