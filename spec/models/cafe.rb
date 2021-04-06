require "rails_helper"

RSpec.describe Cafe, type: :model do
  context "住所について" do
    it "入力されている時、有効である" do
      hoge = Cafe.new(
        name: "Test Roaster",
        address: "東京都千代田区千代田1-1"
      )
      expect(hoge).to be_valid
     end
    
    it "ない時、無効である" do
      hogehoge = Cafe.new(
        name: "Test Roaster",
        address: ""
      )
      expect(hogehoge).not_to be_valid
    end

    it "長さが50文字以下の時、有効である" do
      fuga = Cafe.new(
        name: "Test Roaster",
        address: "東京都千代田区丸の内１丁目"
      )
      expect(fuga).to be_valid
    end

    it "長さが51文字以上の時、無効である" do
      fugafuga = Cafe.new(
        name: "Test Roaster",
        address: "東京都千代田区千代田" + "1-"*45
      )
      expect(fugafuga).not_to be_valid
    end

    it "都道府県ありの時、有効である" do
      piyo = Cafe.new(
        name: "Test Roaster",
        address: "福岡県福岡市博多区博多駅中央街１−１"
      )
      expect(piyo).to be_valid
    end

    it "都道府県なしの時、無効である" do
      piyopiyo = Cafe.new(
        name: "Test Roaster",
        address: "福岡市博多区博多駅中央街１−１"
      )
      expect(piyopiyo).not_to be_valid
    end
  end
end
