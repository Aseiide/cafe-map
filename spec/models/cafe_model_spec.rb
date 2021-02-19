require "rails_helper"

RSpec.describe Cafe, type: :model do
  it "is invalid without an address" do
    hoge = Cafe.new(address: "")
    hoge.valid?
    expect(hoge.errors[:address]).to include("can't be blank")
  end
end
