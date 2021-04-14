require "rails_helper"

RSpec.describe Cafe, type: :model do

  describe "住所について" do
    let(:cafe){ build(:cafe, name: name, address: address) }
    let(:name){ "Test Roaster" }
    let(:address){ "東京都墨田区押上１-１−２" }

    context "入力されている時、有効である" do
      it { expect(cafe).to be_valid }
    end

    context "ない時、無効である" do
      let (:address){ "" }
      it { expect(cafe).not_to be_valid }
    end

    context "長さが50文字以下の時、有効である" do
      it { expect(cafe).to be_valid }
    end

    context "長さが51文字以上の時、無効である" do
      let (:address) { "東京都墨田区押" + "1-"*22 }
      it { expect(cafe).not_to be_valid }
    end

    context "都道府県ありの時、有効である" do
      it { expect(cafe).to be_valid }
    end

    context "都道府県なしの時、無効である" do
      let(:address){ "墨田区押上１-１−２" }
      it { expect(cafe).not_to be_valid }
    end
  end

  describe "名前について" do
    let(:cafe){ build(:cafe, name: name, address: address) }
    let(:name){ "Test Roaster" }
    let(:address){ "東京都墨田区押上１-１−２" }

    context "入力されているとき、有効である" do
      it { expect(cafe).to be_valid }
    end

    context "空文字のとき、無効である" do
      let(:name){ "" }
      it { expect(cafe).not_to be_valid }
    end

    context "40文字以下の時、有効である" do
      let(:name){ "a" * 40 }
      it { expect(cafe).to be_valid }
    end

    context "41文字以上の時、無効である" do
      let(:name){ "a"* 41 }
      it { expect(cafe).not_to be_valid }
    end
  end
end
