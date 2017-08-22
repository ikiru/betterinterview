require 'test_helper'

class InterviewTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interview_type = interview_types(:one)
  end

  test "should get index" do
    get interview_types_url
    assert_response :success
  end

  test "should get new" do
    get new_interview_type_url
    assert_response :success
  end

  test "should create interview_type" do
    assert_difference('InterviewType.count') do
      post interview_types_url, params: { interview_type: { type: @interview_type.type } }
    end

    assert_redirected_to interview_type_url(InterviewType.last)
  end

  test "should show interview_type" do
    get interview_type_url(@interview_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_interview_type_url(@interview_type)
    assert_response :success
  end

  test "should update interview_type" do
    patch interview_type_url(@interview_type), params: { interview_type: { type: @interview_type.type } }
    assert_redirected_to interview_type_url(@interview_type)
  end

  test "should destroy interview_type" do
    assert_difference('InterviewType.count', -1) do
      delete interview_type_url(@interview_type)
    end

    assert_redirected_to interview_types_url
  end
end
