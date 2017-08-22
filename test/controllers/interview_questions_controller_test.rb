require 'test_helper'

class InterviewQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interview_question = interview_questions(:one)
  end

  test "should get index" do
    get interview_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_interview_question_url
    assert_response :success
  end

  test "should create interview_question" do
    assert_difference('InterviewQuestion.count') do
      post interview_questions_url, params: { interview_question: { question: @interview_question.question } }
    end

    assert_redirected_to interview_question_url(InterviewQuestion.last)
  end

  test "should show interview_question" do
    get interview_question_url(@interview_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_interview_question_url(@interview_question)
    assert_response :success
  end

  test "should update interview_question" do
    patch interview_question_url(@interview_question), params: { interview_question: { question: @interview_question.question } }
    assert_redirected_to interview_question_url(@interview_question)
  end

  test "should destroy interview_question" do
    assert_difference('InterviewQuestion.count', -1) do
      delete interview_question_url(@interview_question)
    end

    assert_redirected_to interview_questions_url
  end
end
