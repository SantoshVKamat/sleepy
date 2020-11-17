require 'test_helper'

class InventoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get inventories_home_url
    assert_response :success
  end

end
