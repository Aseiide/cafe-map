require 'test_helper'

class CafeTest < ActiveSupport::TestCase

  def setup
    @cafe = Cafe.new(address: "東京都千代田区千代田1-1")
  end

  test "should be valid" do
    assert @cafe.valid?
  end

  test "name should not be too long" do
    @cafe.address = "a" * 51
    assert_not @cafe.valid?
  end
end
