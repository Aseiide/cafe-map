class Admin::CafesController < Admin::BaseController
  def new
    @cafe = Cafe.new
  end

  def create
    shop = params[:cafe]
    address_parameter = URI.encode_www_form({address: shop})
    uri = URI.parse("https://maps.googleapis.com/maps/api/geocode/json?#{address_parameter}&key=#{ENV["MAP_API_KEY"]}")
    response = Net::HTTP.get_response(uri)
    @result = JSON.parse(response.body)
    @cafe = Cafe.new(
      name: cafe_params["name"],
      address: cafe_params["address"],
      latitude: @result["results"][0]["geometry"]["location"]["lat"],
      longitude: @result["results"][0]["geometry"]["location"]["lng"]
    )
    if @cafe.save
      flash[:notice] = "保存しました"
      # puts "保存に成功"
      redirect_to cafes_path
    else
      flash.now[:danger] = "保存に失敗しました"
      render action: :new
    end
  end
  
  private
  
    def cafe_params
      params.require(:cafe).permit(:name, :address, :latitude, :longitude)
    end
end
