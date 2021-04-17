require "rails_helper"

RSpec.describe "API Test", type: :request do
  describe "アプリケーションのエンドポイントにアクセスできるか" do

    context "GETで /cafes にアクセスした時" do
      it "HTTPステータスコードが200でOKとなる" do
        get cafes_path
        expect(response).to have_http_status(200)
      end
    end

    context "GETで / にアクセスした時" do
      it "HTTPステータスコードが200でOKとなる" do
        get root_path
        expect(response).to have_http_status(200)
      end
    end

    context "GETで /admin/cafes/new にアクセスした時" do
      it "HTTPステータスコードが200でOKとなる" do
        get new_admin_cafe_path
        expect(response).to have_http_status(200)
      end
    end

    context "すべてのパラメータが揃っている時" do
      let(:query_mock) { instance_double(MapQuery) }

      before do
        allow(MapQuery).to receive(:new).and_return query_mock
        allow(query_mock).to receive(:result) { { lat: '35.7100069', lng: '139.8108103' } }
      end

      it "/cafes にリダイレクトする" do
        post admin_cafes_path, params:{
          cafe: { 
          address:"東京都墨田区押上１-１−２",
          name: "Test Roaster",
          latitude: query_mock.result[:lat],
          longitude: query_mock.result[:lng]
          }
        }

        expect(response).to redirect_to cafes_path
      end
    end
  end
end
