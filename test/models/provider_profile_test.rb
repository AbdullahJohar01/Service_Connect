require "test_helper"

class ProviderProfileTest < ActiveSupport::TestCase
  test "provider profile belongs to a user and validates required fields" do
    user = User.new(
      first_name: "Test",
      last_name: "Provider",
      email: "provider_profile_test@example.com",
      phone_number: "03001234568",
      password: "Password123!",
      password_confirmation: "Password123!",
      role: :provider,
      status: :active
    )

    provider_profile = ProviderProfile.new(
      user: user,
      business_name: "Test Services",
      experience_years: 5,
      hourly_rate: 1500
    )

    assert_equal user, provider_profile.user
    assert provider_profile.valid?
    assert_respond_to provider_profile, :bookings
  end
end
