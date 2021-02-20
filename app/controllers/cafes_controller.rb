class CafesController < ApplicationController
  # def create
  #   address = params[:cafe]
  #   params = URI.encode_www_form({address: address})
  #   uri = URI.parse("https://maps.googleapis.com/maps/api/geocode/json?#{params}&key=#{ENV["MAP_API_KEY"]}")
  #   response = Net::HTTP.get_response(uri)
  #   @result = JSON.parse(response.body)
  #   @cafe = Cafe.new(
  #     address: cafe_params["address"],
  #     latitude: @result["results"][0]["geometry"]["location"]["lat"],
  #     longitude: @result["results"][0]["geometry"]["location"]["lng"]
  #   )
  #   #保存
  #   if @cafe.save
  #     puts "保存に成功"
  #     redirect_to cafes_path
  #   else
  #     flash[:danger] = "保存に失敗しました"
  #     redirect_to new_admin_cafe_path
  #   end
  # end
  
  # private
  
  #   def cafe_params
  #     params.require(:cafe).permit(:address, :latitude, :longitude)
  #   end
end
