class Admin::CafesController < Admin::BaseController
  def new
    @cafe = Cafe.new
  end
end
