require 'test_helper'

#class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  
#end

test "should not save user without email and password" do
  	user = User.new("taramathur@gmail.com","helloooo")
  	assert_not user.save, "Saved the user without email and password"
end
