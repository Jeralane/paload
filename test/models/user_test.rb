require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'Jess', password: 'password')
  end
  
  test "should be valid" do
    assert @user.valid?
  end
  # test "the truth" do
  #   assert true
  # end
end
