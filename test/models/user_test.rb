require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "user is invalid with an invalid email address" do
    user = User.new(
      first_name: "Test",
      last_name: "User",
      email: "invalid-email",
      phone_number: "03001234570",
      password: "TestPassword123!",
      role: :customer,
      status: :active
    )

    assert_not user.valid?
    assert_includes user.errors[:email], "is invalid"
  end
end
