require 'test_helper'

class PostionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @postion = postions(:one)
  end

  test "should get index" do
    get postions_url
    assert_response :success
  end

  test "should get new" do
    get new_postion_url
    assert_response :success
  end

  test "should create postion" do
    assert_difference('Postion.count') do
      post postions_url, params: { postion: { position: @postion.position } }
    end

    assert_redirected_to postion_url(Postion.last)
  end

  test "should show postion" do
    get postion_url(@postion)
    assert_response :success
  end

  test "should get edit" do
    get edit_postion_url(@postion)
    assert_response :success
  end

  test "should update postion" do
    patch postion_url(@postion), params: { postion: { position: @postion.position } }
    assert_redirected_to postion_url(@postion)
  end

  test "should destroy postion" do
    assert_difference('Postion.count', -1) do
      delete postion_url(@postion)
    end

    assert_redirected_to postions_url
  end
end
