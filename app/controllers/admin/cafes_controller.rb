class Admin::CafesController < Admin::BaseController
  def new
    @cafe = Cafe.new
  end

  def create
    @result = MapQuery.new(params[:cafe]).result
    @status = MapQuery.new(params[:cafe]).status

    @cafe = Cafe.new(
      name: cafe_params["name"],
      address: cafe_params["address"],
      latitude: @result["lat"],
      longitude: @result["lng"]
    )

    if @cafe.save
      flash[:notice] = "保存しました"
      redirect_to cafes_path
    elsif @status != "OK"
      flash.now[:danger] = "保存に失敗しました"
      render action: :new
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
