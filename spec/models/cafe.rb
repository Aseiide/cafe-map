require "rails_helper"

RSpec.describe Cafe, type: :model do
  it "addressが空でないとき保存できる" do
    foo = Cafe.new(
      address: "東京都千代田区1-1"
    )
    expect(foo.save).to be_truthy
  end

  it "addressが空のとき保存できない" do
    hoge = Cafe.new(
      address: ""
    )
    expect(hoge.save).to be_falsey
  end

  it "addressが50文字以下の時、保存できる" do
    qux = Cafe.new(
      address: "福岡県北九州市小倉北区浅野１丁目１−１"
    )
    expect(qux.save).to be_truthy
  end

  it "addressが51文字以上の時、保存できない" do
    quxqux = Cafe.new(
      address: "a" * 51
    )
    expect(quxqux.save).to be_falsey
  end

  it "都道府県が書かれているとき、保存できる" do
    quux = Cafe.new(
      address: "福岡県福岡市博多区博多駅中央街１−１"
    )
    expect(quux.save).to be_truthy
  end

  it "都道府県が書かれていない時、保存できない" do
    quuxquuux = Cafe.new(
      address: "北九州市小倉北区浅野１丁目１−１"
    )
    expect(quuxquuux.save).to be_falsey
  end
end
