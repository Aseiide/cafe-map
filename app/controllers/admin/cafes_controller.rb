class Admin::CafesController < Admin::BaseController
  def new
    # binding.pry
    @cafe = Cafe.new
  end

  def create
    binding.pry
  end
end
