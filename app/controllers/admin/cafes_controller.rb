class Admin::CafesController < Admin::BaseController
  def new
    @cafe = Cafe.new
  end

  def create
    @result = MapQuery.new(params[:cafe].result

    @cafe = Cafe.new(
      name: cafe_params["name"],
      address: cafe_params["address"],
      latitude: @result["results"][0]["geometry"]["location"]["lat"],
      longitude: @result["results"][0]["geometry"]["location"]["lng"]
    )
    if @cafe.save
      flash[:notice] = "保存しました"
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
