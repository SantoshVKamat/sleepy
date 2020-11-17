require 'test_helper'

class VarehousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @varehouse = varehouses(:one)
  end

  test "should get index" do
    get varehouses_url
    assert_response :success
  end

  test "should get new" do
    get new_varehouse_url
    assert_response :success
  end

  test "should create varehouse" do
    assert_difference('Varehouse.count') do
      post varehouses_url, params: { varehouse: {  } }
    end

    assert_redirected_to varehouse_url(Varehouse.last)
  end

  test "should show varehouse" do
    get varehouse_url(@varehouse)
    assert_response :success
  end

  test "should get edit" do
    get edit_varehouse_url(@varehouse)
    assert_response :success
  end

  test "should update varehouse" do
    patch varehouse_url(@varehouse), params: { varehouse: {  } }
    assert_redirected_to varehouse_url(@varehouse)
  end

  test "should destroy varehouse" do
    assert_difference('Varehouse.count', -1) do
      delete varehouse_url(@varehouse)
    end

    assert_redirected_to varehouses_url
  end
end
