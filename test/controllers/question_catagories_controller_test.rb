require 'test_helper'

class QuestionCatagoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_catagory = question_catagories(:one)
  end

  test "should get index" do
    get question_catagories_url
    assert_response :success
  end

  test "should get new" do
    get new_question_catagory_url
    assert_response :success
  end

  test "should create question_catagory" do
    assert_difference('QuestionCatagory.count') do
      post question_catagories_url, params: { question_catagory: { catagory: @question_catagory.catagory } }
    end

    assert_redirected_to question_catagory_url(QuestionCatagory.last)
  end

  test "should show question_catagory" do
    get question_catagory_url(@question_catagory)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_catagory_url(@question_catagory)
    assert_response :success
  end

  test "should update question_catagory" do
    patch question_catagory_url(@question_catagory), params: { question_catagory: { catagory: @question_catagory.catagory } }
    assert_redirected_to question_catagory_url(@question_catagory)
  end

  test "should destroy question_catagory" do
    assert_difference('QuestionCatagory.count', -1) do
      delete question_catagory_url(@question_catagory)
    end

    assert_redirected_to question_catagories_url
  end
end
