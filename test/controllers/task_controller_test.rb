require 'test_helper'

class TaskControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get finished" do
    get :finished
    assert_response :success
  end

end
