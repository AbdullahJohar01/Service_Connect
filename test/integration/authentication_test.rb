require "test_helper"

class AuthenticationTest < ActionDispatch::IntegrationTest
  test "customer can log in with valid credentials" do
    user = User.create!(
      first_name: "Test",
      last_name: "Customer",
      email: "test_customer@example.com",
      phone_number: "03001234567",
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

    response_data = JSON.parse(response.body)

    assert_equal "Login successful", response_data["message"]
    assert response_data["access_token"].present?
    assert response_data["refresh_token"].present?
  end
end
