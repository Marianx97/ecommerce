require "test_helper"

class PurchaseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get purchase_index_url
    assert_response :success
  end

  test "should get show" do
    get purchase_show_url
    assert_response :success
  end
end
