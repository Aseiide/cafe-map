require "rails_helper"

RSpec.describe Cafe, type: :model do

  describe "住所について" do
    context "入力されている時、有効である" do
      cafe = FactoryBot.build(:cafe)
      it { expect(cafe).to be_valid }
    end

    context "ない時、無効である" do
      cafe = FactoryBot.build(:cafe, address: "")
      it { expect(cafe).not_to be_valid }
    end

    context "長さが50文字以下の時、有効である" do
      cafe = FactoryBot.build(:cafe)
      it { expect(cafe).to be_valid }
    end

    context "長さが51文字以上の時、無効である" do
      cafe = FactoryBot.build(:cafe, address: "東京都千代田区千代田" + "1-"*45)
      it { expect(cafe).not_to be_valid }
    end

    context "都道府県ありの時、有効である" do
      cafe = FactoryBot.build(:cafe)
      it { expect(cafe).to be_valid }
    end

    context "都道府県なしの時、無効である" do
      cafe = FactoryBot.build(:cafe, address: "墨田区押上１-１−２")
      it { expect(cafe).not_to be_valid }
    end
  end

  describe "名前について" do
    context "入力されているとき、有効である" do
      cafe = FactoryBot.build(:cafe)
      it { expect(cafe).to be_valid }
    end

    context "空文字のとき、無効である" do
      cafe = FactoryBot.build(:cafe, name: "")
      it { expect(cafe).not_to be_valid }
    end

    context "40文字以下の時、有効である" do
      cafe = FactoryBot.build(:cafe, name: "a" * 40)
      it { expect(cafe).to be_valid }
    end

    context "41文字以上の時、無効である" do
      cafe = FactoryBot.build(:cafe, name: "a" * 41)
      it { expect(cafe).not_to be_valid }
    end
  end
end
