class Admin::CafesController < Admin::BaseController
  def new
    @cafe = Cafe.new
  end

  def create
    binding.pry
  end
end
