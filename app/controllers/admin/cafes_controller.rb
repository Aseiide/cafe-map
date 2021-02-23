class Admin::CafesController < Admin::BaseController
  def new
    @cafe = Cafe.new
  end

  def create
    shop = params[:cafe]
    params = URI.encode_www_form({address: shop})
    uri = URI.parse("https://maps.googleapis.com/maps/api/geocode/json?#{params}&key=#{ENV["MAP_API_KEY"]}")
    response = Net::HTTP.get_response(uri)
    @result = JSON.parse(response.body)
    @cafe = Cafe.new(
      name: cafe_params["name"],
      address: cafe_params["address"],
      latitude: @result["results"][0]["geometry"]["location"]["lat"],
      longitude: @result["results"][0]["geometry"]["location"]["lng"]
    )
    if @cafe.save
      puts "保存に成功"
      redirect_to cafes_path
    else
      flash.now[:danger] = "保存に失敗しました"
      render action: :new
    end
  end
  
  private
  
    def cafe_params
      params.permit(:name, :address, :latitude, :longitude)
    end
end
