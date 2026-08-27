require "test_helper"

class ReviewTest < ActiveSupport::TestCase
  test "review is invalid when rating is outside 1 to 5" do
    review = Review.new(
      rating: 6,
      comment: "Good service"
    )

    assert_not review.valid?
    assert_includes review.errors[:rating], "is not included in the list"
  end

  test "review is invalid without a comment" do
    review = Review.new(
      rating: 5
    )

    assert_not review.valid?
    assert_includes review.errors[:comment], "can't be blank"
  end
end
