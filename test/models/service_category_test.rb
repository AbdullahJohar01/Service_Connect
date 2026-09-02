require "test_helper"

class ServiceCategoryTest < ActiveSupport::TestCase
  test "service category has provider services and bookings associations" do
    service_category = ServiceCategory.new(
      name: "Electrical",
      description: "Electrical repair services",
      active: true
    )

    assert_respond_to service_category, :provider_services
    assert_respond_to service_category, :bookings
  end
end
