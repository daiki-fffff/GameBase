require 'test_helper'

class ImpressionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get impressions_index_url
    assert_response :success
  end

end
