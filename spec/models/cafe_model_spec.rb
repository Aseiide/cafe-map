require "rails_helper"

RSpec.describe Cafe, type: :model do
  it "nameとaddressが空では保存できない" do
    hoge = Cafe.new(
      name: "",
      address: ""
    )
    expect(hoge.save).to be_falsey #nameとaddressが空なのでfalseを期待する
  end
  it "nameとaddressを埋めると保存できる" do
    foo = Cafe.new(
      name: "Cafe1",
      address: "東京都千代田区1-1"
    )
    expect(foo.save).to be_truthy
  end
end
