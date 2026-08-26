require "test_helper"

class UserAssociationTest < ActiveSupport::TestCase
  test "user has a customer profile" do
    user = User.create!(
      first_name: "Test",
      last_name: "Customer",
      email: "association_test@example.com",
      phone_number: "03001234572",
      password: "TestPassword123!",
      role: :customer,
      status: :active
    )

    profile = CustomerProfile.create!(
      user: user
    )

    assert_equal profile, user.customer_profile
    assert_equal user, profile.user
  end
end
