require "test_helper"

class CurrentUserTest < ActionDispatch::IntegrationTest
  test "authenticated customer can view current user" do
    user = User.create!(
      first_name: "Test",
      last_name: "Customer",
      email: "current_user@example.com",
      phone_number: "03001234569",
      password: "TestPassword123!",
      role: :customer,
      status: :active
    )

    post "/api/v1/auth/login",
      params: {
        email: user.email,
        password: "TestPassword123!"
      },
      as: :json

    assert_response :success

    login_response = JSON.parse(response.body)
    access_token = login_response["access_token"]

    get "/api/v1/auth/me",
      headers: {
        "Authorization" => "Bearer #{access_token}",
        "Accept" => "application/json"
      }

    assert_response :success

    response_data = JSON.parse(response.body)

    assert_equal user.id, response_data["user"]["id"]
    assert_equal user.email, response_data["user"]["email"]
  end
end
