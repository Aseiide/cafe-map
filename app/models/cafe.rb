class Cafe < ApplicationRecord
  validates:address, presence: true, length: {maximum: 50}, format: {
    with: /...??[都道府県]/}
  validates:name, presence: true, length: {maximum: 40}
end
