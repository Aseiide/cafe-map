class Cafe < ApplicationRecord
  validates:address, presence: true, length: {maximum: 50}
  validates:name, presence: true, length: {maximum: 40}
end
