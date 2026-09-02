require "test_helper"

class AvailabilityTest < ActiveSupport::TestCase
  test "availability is valid when end time is after start time" do
    provider_user = User.new(
      first_name: "Test",
      last_name: "Provider",
      email: "availability_test@example.com",
      phone_number: "03001234571",
      password: "Password123!",
      password_confirmation: "Password123!",
      role: :provider,
      status: :active
    )

    provider_profile = ProviderProfile.create!(
      user: provider_user,
      business_name: "Test Availability Services",
      experience_years: 5,
      hourly_rate: 1500
    )

    availability = Availability.new(
      provider_profile: provider_profile,
      day_of_week: 1,
      start_time: "09:00",
      end_time: "17:00"
    )

    assert availability.valid?
  end

  test "availability is invalid when end time is before start time" do
    provider_user = User.new(
      first_name: "Test",
      last_name: "Provider",
      email: "availability_invalid@example.com",
      phone_number: "03001234572",
      password: "Password123!",
      password_confirmation: "Password123!",
      role: :provider,
      status: :active
    )

    provider_profile = ProviderProfile.create!(
      user: provider_user,
      business_name: "Invalid Availability Services",
      experience_years: 5,
      hourly_rate: 1500
    )

    availability = Availability.new(
      provider_profile: provider_profile,
      day_of_week: 1,
      start_time: "17:00",
      end_time: "09:00"
    )

    assert_not availability.valid?
    assert_includes availability.errors[:end_time], "must be after start time"
  end
end
