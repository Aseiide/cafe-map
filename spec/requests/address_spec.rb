require "rails_helper"

RSpec.describe "API Test", type: :request do
  describe "アプリケーションのエンドポイントにアクセスできるか" do

    context "GETで /cafes にアクセスした時"
    it "HTTPステータスコードが200でOKとなる" do
      get cafes_path
      expect(response).to have_http_status(200)
    end

    context "GETで / にアクセスした時"
    it "HTTPステータスコードが200でOKとなる" do
      get root_path
      expect(response).to have_http_status(200)
    end

    context "GETで /admin/cafes/new にアクセスした時"
    it "HTTPステータスコードが200でOKとなる" do
      get new_admin_cafe_path
      expect(response).to have_http_status(200)
    end

    context "すべてのパラメータが揃っている時"
    it "/cafes にリダイレクトする" do
      post admin_cafes_path, params:{ cafe: {address:"東京都墨田区押上１-１−２", name: "Test Roaster", latitude: "35.7100069", longitude: "139.8108103"} }
      expect(response).to redirect_to cafes_path
    end
  end
end
