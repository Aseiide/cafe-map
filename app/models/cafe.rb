class Cafe < ApplicationRecord
  validates:address, presence: true, length: {maximum: 50}
  validates:name, presence: true, length: {maximum: 40}

  def location
    {
      latitute: @cafe.latitude,
      longitude: @cafe.longitude
    }
  end
end
