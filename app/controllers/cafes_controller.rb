class CafesController < ApplicationController
  def index
    gon.user_name = 'テスト太郎'
  end
end
