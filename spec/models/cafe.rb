require "rails_helper"

RSpec.describe Cafe, type: :model do
  let(:name) {Cafe.new(name: "Test Roaster")}
  context "住所について" do
    it "入力されている時、有効である" do
      cafe = Cafe.new(
        name: name,
        address: "東京都千代田区千代田1-1"
      )
      expect(cafe).to be_valid
     end
    
    it "ない時、無効である" do
      cafe = Cafe.new(
        name: name,
        address: ""
      )
      expect(cafe).not_to be_valid
    end

    it "長さが50文字以下の時、有効である" do
      cafe = Cafe.new(
        name: name,
        address: "東京都千代田区丸の内１丁目"
      )
      expect(cafe).to be_valid
    end

    it "長さが51文字以上の時、無効である" do
      cafe = Cafe.new(
        name: name,
        address: "東京都千代田区千代田" + "1-"*45
      )
      expect(cafe).not_to be_valid
    end

    it "都道府県ありの時、有効である" do
      cafe = Cafe.new(
        name: name,
        address: "福岡県福岡市博多区博多駅中央街１−１"
      )
      expect(cafe).to be_valid
    end

    it "都道府県なしの時、無効である" do
      cafe = Cafe.new(
        name: name,
        address: "福岡市博多区博多駅中央街１−１"
      )
      expect(cafe).not_to be_valid
    end
  end
end
