require "rails_helper"

RSpec.describe Cafe, type: :model do
 it "住所入力されている時、有効である"
 it "住所がない時、無効である"
 it "住所の長さが50文字以下の時、有効である"
 it "住所の長さが51文字以上の時、無効である"
 it "都道府県ありの時、有効である"
 it "都道府県なしの時、無効である"
end
