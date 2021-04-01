require "rails_helper"

RSpec.describe Cafe, type: :model do
  it "nameとaddressを埋めると保存できる" do
    foo = Cafe.new(
      name: "Cafe1",
      address: "東京都千代田区1-1"
    )
    expect(foo.save).to be_truthy
  end

  it "nameとaddressが空では保存できない" do
    hoge = Cafe.new(
      name: "",
      address: ""
    )
    expect(hoge.save).to be_falsey
  end

  it "nameが40文字以上と正しい住所では保存できない" do
    bar = Cafe.new(
      name: "a" * 41,
      address: "東京都港区芝公園4-2-8"
    )
    expect(bar.save).to be_falsey
  end

  it "正しい名前と住所と住所が51文字以上では保存できない" do
    hogehoge = Cafe.new(
      name: "Test Roaster 1",
      address: "a" * 51
    )
    expect(hogehoge.save).to be_falsey
  end
  
  it "nameが40字以上かつaddressが50文字以上では保存できない" do
    baz = Cafe.new(
      name: "a" * 41, 
      address: "a" * 51
    )
    expect(baz.save).to be_falsey
  end
end
