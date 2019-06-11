require 'test_helper'

class FailuresControllerTest < ActionController::TestCase
  setup do
    @failure = failures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:failures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create failure" do
    assert_difference('Failure.count') do
      post :create, failure: { message: @failure.message, stack_trace: @failure.stack_trace }
    end

    assert_redirected_to failure_path(assigns(:failure))
  end

  test "should show failure" do
    get :show, id: @failure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @failure
    assert_response :success
  end

  test "should update failure" do
    patch :update, id: @failure, failure: { message: @failure.message, stack_trace: @failure.stack_trace }
    assert_redirected_to failure_path(assigns(:failure))
  end

  test "should destroy failure" do
    assert_difference('Failure.count', -1) do
      delete :destroy, id: @failure
    end

    assert_redirected_to failures_path
  end
end
