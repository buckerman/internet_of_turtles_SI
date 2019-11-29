require 'test_helper'

class ChartControllerTest < ActionDispatch::IntegrationTest
  test "should get chart" do
    get chart_chart_url
    assert_response :success
  end

end
