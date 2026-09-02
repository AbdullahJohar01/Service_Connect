require "test_helper"

class ProviderServiceTest < ActiveSupport::TestCase
  test "provider service has valid associations and fields" do
    provider_user = User.new(
      first_name: "Test",
      last_name: "Provider",
      email: "provider_service_test@example.com",
      phone_number: "03001234570",
      password: "Password123!",
      password_confirmation: "Password123!",
      role: :provider,
      status: :active
    )

    provider_profile = ProviderProfile.new(
      user: provider_user,
      business_name: "Test Provider Services",
      experience_years: 5,
      hourly_rate: 1500
    )

    service_category = ServiceCategory.new(
      name: "Electrical",
      description: "Electrical services",
      active: true
    )

    provider_service = ProviderService.new(
      provider_profile: provider_profile,
      service_category: service_category,
      base_price: 1500,
      duration_minutes: 60
    )

    assert_equal provider_profile, provider_service.provider_profile
    assert_equal service_category, provider_service.service_category
    assert provider_service.valid?
    assert_equal "Electrical", provider_service.service_category_name
  end
end
