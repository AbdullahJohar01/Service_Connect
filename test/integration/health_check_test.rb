require "test_helper"

class HealthCheckTest < ActionDispatch::IntegrationTest
  test "application health check returns success" do
    get "/up"

    assert_response :success
  end
end
