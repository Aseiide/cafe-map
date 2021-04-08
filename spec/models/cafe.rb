require "rails_helper"

RSpec.describe Cafe, type: :model do

  describe "住所について" do
    let(:cafe) { Cafe.new( name: cafe_name, address: address ) }
    let(:cafe_name) { "Test Roaster" }
    let(:address) { "東京都千代田区丸の内１丁目" }

    context "入力されている時、有効である" do

      it { expect(cafe).to be_valid }
    end

    context "ない時、無効である" do
      let(:address) { "" }

      it { expect(cafe).not_to be_valid }
    end

    context "長さが50文字以下の時、有効である" do
      let(:address) { "東京都千代田区丸の内１丁目" }

      it { expect(cafe).to be_valid }
    end

    context "長さが51文字以上の時、無効である" do
      let(:address) { "東京都千代田区千代田" + "1-"*45 }

      it { expect(cafe).not_to be_valid }
    end

    context "都道府県ありの時、有効である" do
      let(:address) { "福岡県福岡市博多区博多駅中央街１−１" }

      it { expect(cafe).to be_valid }
    end

    context "都道府県なしの時、無効である" do
      let(:address) { "福岡市博多区博多駅中央街１−１" }

      it { expect(cafe).not_to be_valid }
    end
  end
end
