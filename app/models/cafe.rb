class Cafe < ApplicationRecord
  validates:address, presence: true, length: {maximum: 50}
end
