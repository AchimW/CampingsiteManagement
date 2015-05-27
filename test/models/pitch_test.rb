require 'test_helper'

class PitchTest < ActiveSupport::TestCase
  setup do
    @pitch = pitches(:one)
  end

  test "setused should return true" do
    assert_equal true, @pitch.setused
  end

  test "unsetused should return false" do
    assert_equal false, @pitch.unsetused
  end
end
