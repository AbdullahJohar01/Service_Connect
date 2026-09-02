require "test_helper"

class AddressTest < ActiveSupport::TestCase
  test "address belongs to a user and can have bookings" do
    user = User.new(
      first_name: "Test",
      last_name: "Customer",
      email: "address_test@example.com",
      phone_number: "03001234567",
      password: "Password123!",
      password_confirmation: "Password123!",
      role: :customer,
      status: :active
    )

    address = Address.new(
      user: user,
      label: "Home",
      street: "Test Street",
      city: "Lahore",
      postal_code: "54000",
      is_default: true
    )

    assert_equal user, address.user
    assert_respond_to address, :bookings
  end
end
