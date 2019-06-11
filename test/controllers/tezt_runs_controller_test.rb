require 'test_helper'

class TeztRunsControllerTest < ActionController::TestCase
  setup do
    @tezt_run = tezt_runs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tezt_runs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tezt_run" do
    assert_difference('TeztRun.count') do
      post :create, tezt_run: { assets: @tezt_run.assets, debug: @tezt_run.debug, duration: @tezt_run.duration, environment_id: @tezt_run.environment_id, failure_id: @tezt_run.failure_id, machine: @tezt_run.machine, status: @tezt_run.status, tezt_id: @tezt_run.tezt_id }
    end

    assert_redirected_to tezt_run_path(assigns(:tezt_run))
  end

  test "should show tezt_run" do
    get :show, id: @tezt_run
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tezt_run
    assert_response :success
  end

  test "should update tezt_run" do
    patch :update, id: @tezt_run, tezt_run: { assets: @tezt_run.assets, debug: @tezt_run.debug, duration: @tezt_run.duration, environment_id: @tezt_run.environment_id, failure_id: @tezt_run.failure_id, machine: @tezt_run.machine, status: @tezt_run.status, tezt_id: @tezt_run.tezt_id }
    assert_redirected_to tezt_run_path(assigns(:tezt_run))
  end

  test "should destroy tezt_run" do
    assert_difference('TeztRun.count', -1) do
      delete :destroy, id: @tezt_run
    end

    assert_redirected_to tezt_runs_path
  end
end
