require "test_helper"

class UserRoleTest < ActiveSupport::TestCase
  test "user role enum supports customer, provider, and admin" do
    user = User.new(
      first_name: "Test",
      last_name: "User",
      email: "role_test@example.com",
      phone_number: "03001234571",
      password: "TestPassword123!"
    )

    user.role = :customer
    assert user.customer?

    user.role = :provider
    assert user.provider?

    user.role = :admin
    assert user.admin?
  end
end
