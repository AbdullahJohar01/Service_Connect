require "test_helper"

class BookingStatusTest < ActiveSupport::TestCase
  test "booking status enum supports all booking statuses" do
    booking = Booking.new

    booking.status = :pending
    assert booking.pending?

    booking.status = :accepted
    assert booking.accepted?

    booking.status = :rejected
    assert booking.rejected?

    booking.status = :confirmed
    assert booking.confirmed?

    booking.status = :in_progress
    assert booking.in_progress?

    booking.status = :completed
    assert booking.completed?

    booking.status = :cancelled
    assert booking.cancelled?
  end
end
