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

  it "正しいnameで正確な住所では保存できる" do
    qux = Cafe.new(
      name: "Test Roaster",
      address: "福岡県北九州市八幡西区西鳴水1-1-1"
    )
    expect(qux.save).to be_truthy
  end

  it "正しいnameで都道府県なしの住所では保存できない" do
    quxqux = Cafe.new(
      name: "Test Roaster",
      address: "北九州市八幡西区西鳴水1-1-1"
    )
    expect(quxqux.save).to be_falsey
  end

  it "正しいnameで海外の住所では保存できない" do
    quux = Cafe.new(
      name: "Test Roaster",
      address: "ホワイトハウス 1600 Pennsylvania Avenue NW, Washington, DC 20500 アメリカ合衆国"
    )
    expect(quux.save).to be_falsey
  end
end
