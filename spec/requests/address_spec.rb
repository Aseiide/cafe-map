require "rails_helper"

RSpec.describe "API Test", type: :request do
  describe "アプリケーションのエンドポイントが機能しているか" do
    it "works" do
      get cafes_path
      expect(response).to have_http_status(200)
    end

    it "works" do
      get root_path
      expect(response).to have_http_status(200)
    end

    it "works" do
      get new_admin_cafe_path
      expect(response).to have_http_status(200)
    end

    it "200を返す" do
      post admin_cafes_path, params:{ cafe: {address:"東京都墨田区押上１-１−２", name: "Test Roaster", latitude: "35.7100069", longitude: "139.8108103"} }
      expect(response).to redirect_to cafes_path
    end
  end
end
