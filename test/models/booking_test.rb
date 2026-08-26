require "test_helper"

class BookingTest < ActiveSupport::TestCase
  test "booking is invalid without scheduled time and customer description" do
    booking = Booking.new(
      estimated_duration: 60,
      estimated_price: 100
    )

    assert_not booking.valid?
    assert_includes booking.errors[:scheduled_at], "can't be blank"
    assert_includes booking.errors[:customer_description], "can't be blank"
  end
end
