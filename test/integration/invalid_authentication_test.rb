require "test_helper"

class InvalidAuthenticationTest < ActionDispatch::IntegrationTest
  test "customer cannot log in with invalid password" do
    user = User.create!(
      first_name: "Test",
      last_name: "Customer",
      email: "invalid_login@example.com",
      phone_number: "03001234568",
      password: "CorrectPassword123!",
      role: :customer,
      status: :active
    )

    post "/api/v1/auth/login",
      params: {
        email: user.email,
        password: "WrongPassword123!"
      },
      as: :json

    assert_response :unauthorized

    response_data = JSON.parse(response.body)

    assert_equal "Invalid email or password", response_data["error"]
  end
end
