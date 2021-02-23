require "rails_helper"

RSpec.describe "Address", type: :request do
  describe "POST /admin/cafes/new"
    it "住所をDBに保存する" do
      post admin_cafes_path, params: {cafe: {name: "cafe", address: "address", latitude: "latitude", longitude: "longitude" }}
      expect(response).to redirect_to cafes_path
    end
end
