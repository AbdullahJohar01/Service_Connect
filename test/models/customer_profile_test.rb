require "test_helper"

class CustomerProfileTest < ActiveSupport::TestCase
  test "customer profile belongs to a user" do
    user = User.new(
      first_name: "Test",
      last_name: "Customer",
      email: "customer_profile_test@example.com",
      phone_number: "03001234569",
      password: "Password123!",
      password_confirmation: "Password123!",
      role: :customer,
      status: :active
    )

    customer_profile = CustomerProfile.new(user: user)

    assert_equal user, customer_profile.user
    assert_respond_to customer_profile, :problem_images
    assert_respond_to customer_profile, :supporting_documents
  end
end
