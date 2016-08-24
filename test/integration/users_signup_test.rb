require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = User.new(name: "Example User", email: "user@example.com",
                      password: "testing", password_confirmation: "testing")          
  end
  
  test "invalid user is not saved" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: {  name: "po",
                                          email: "user@valid",
                                          password: "poop", 
                                          password_confirmation: "pooper" } }
    end
    assert_template 'users/new'
    assert_select 'div'
  end
  
  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 0 do
      post users_path, params: { user: { name:  "Example User",
                                         email: "user@example.com",
                                         password:              "password",
                                         password_confirmation: "password" } }
    end
    #follow_redirect!
    #assert_template 'users/show'
  end
  
  # test "the truth" do
  #   assert true
  # end
end
