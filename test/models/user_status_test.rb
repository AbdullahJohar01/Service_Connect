require "test_helper"

class UserStatusTest < ActiveSupport::TestCase
  test "user status enum supports pending, active, suspended, and rejected" do
    user = User.new(
      first_name: "Test",
      last_name: "User",
      email: "status_test@example.com",
      phone_number: "03001234573",
      password: "TestPassword123!"
    )

    user.status = :pending
    assert user.pending?

    user.status = :active
    assert user.active?

    user.status = :suspended
    assert user.suspended?

    user.status = :rejected
    assert user.rejected?
  end
end
