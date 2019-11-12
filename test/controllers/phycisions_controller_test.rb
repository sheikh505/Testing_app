require 'test_helper'

class PhycisionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phycision = phycisions(:one)
  end

  test "should get index" do
    get phycisions_url
    assert_response :success
  end

  test "should get new" do
    get new_phycision_url
    assert_response :success
  end

  test "should create phycision" do
    assert_difference('Phycision.count') do
      post phycisions_url, params: { phycision: { name: @phycision.name } }
    end

    assert_redirected_to phycision_url(Phycision.last)
  end

  test "should show phycision" do
    get phycision_url(@phycision)
    assert_response :success
  end

  test "should get edit" do
    get edit_phycision_url(@phycision)
    assert_response :success
  end

  test "should update phycision" do
    patch phycision_url(@phycision), params: { phycision: { name: @phycision.name } }
    assert_redirected_to phycision_url(@phycision)
  end

  test "should destroy phycision" do
    assert_difference('Phycision.count', -1) do
      delete phycision_url(@phycision)
    end

    assert_redirected_to phycisions_url
  end
end
