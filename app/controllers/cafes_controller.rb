class CafesController < ApplicationController
  def create
    @cafe = Cafe.new(
      cafe_params,
      latitude: @result["results"][0]["geometry"]["location"]["lat"],
      longitude: @result["results"][0]["geometry"]["location"]["lng"]
    )
    #保存
    @cafe.save
    redirect_to cafes_path
  end
  def cafe_params
    params.require(:cafe).permit(:address)
  end
end
