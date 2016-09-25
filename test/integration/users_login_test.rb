require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  fixtures :users
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = users(:parker)
  end
  test "login with invalid information" do
    #get login_path
   # get login_path
    #get session_create, params: { session: {email: @user.email, password: 'password'} }
    #assert_equal "/login"
    # assert_redirected_to @user
    # follow_redirect!
  end
end
