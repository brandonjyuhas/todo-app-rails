require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_users_url
    assert_response :success
  end

  test "should post create" do
    post users_url, params: { user: { email_address: "test@example.com", password: "password" } }
    assert_response :redirect
  end
end
