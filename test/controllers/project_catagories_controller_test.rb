require 'test_helper'

class ProjectCatagoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_catagory = project_catagories(:one)
  end

  test "should get index" do
    get project_catagories_url
    assert_response :success
  end

  test "should get new" do
    get new_project_catagory_url
    assert_response :success
  end

  test "should create project_catagory" do
    assert_difference('ProjectCatagory.count') do
      post project_catagories_url, params: { project_catagory: { catagory: @project_catagory.catagory } }
    end

    assert_redirected_to project_catagory_url(ProjectCatagory.last)
  end

  test "should show project_catagory" do
    get project_catagory_url(@project_catagory)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_catagory_url(@project_catagory)
    assert_response :success
  end

  test "should update project_catagory" do
    patch project_catagory_url(@project_catagory), params: { project_catagory: { catagory: @project_catagory.catagory } }
    assert_redirected_to project_catagory_url(@project_catagory)
  end

  test "should destroy project_catagory" do
    assert_difference('ProjectCatagory.count', -1) do
      delete project_catagory_url(@project_catagory)
    end

    assert_redirected_to project_catagories_url
  end
end
