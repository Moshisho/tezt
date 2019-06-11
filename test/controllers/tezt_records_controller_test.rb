require 'test_helper'

class TeztRecordsControllerTest < ActionController::TestCase
  setup do
    @tezt_record = TeztRecord.first
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tezt_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tezt_record" do
    assert_difference('TeztRecord.count') do
      post :create, tezt_record: { active: @tezt_record.active, avg_duration: @tezt_record.avg_duration, class_name: @tezt_record.class_name, flaky: @tezt_record.flaky, jira_bug_id: @tezt_record.jira_bug_id, jira_test_id: @tezt_record.jira_test_id, name: @tezt_record.name, risk: @tezt_record.risk, tags: @tezt_record.tags, team_id: @tezt_record.team_id, tezt_run_id: @tezt_record.tezt_run_id, user_id: @tezt_record.user_id }
    end

    assert_redirected_to tezt_record_path(assigns(:tezt_record))
  end

  test "should show tezt_record" do
    get :show, id: @tezt_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tezt_record
    assert_response :success
  end

  test "should update tezt_record" do
    patch :update, id: @tezt_record, tezt_record: { active: @tezt_record.active, avg_duration: @tezt_record.avg_duration, class_name: @tezt_record.class_name, flaky: @tezt_record.flaky, jira_bug_id: @tezt_record.jira_bug_id, jira_test_id: @tezt_record.jira_test_id, name: @tezt_record.name, risk: @tezt_record.risk, tags: @tezt_record.tags, team_id: @tezt_record.team_id, tezt_run_id: @tezt_record.tezt_run_id, user_id: @tezt_record.user_id }
    assert_redirected_to tezt_record_path(assigns(:tezt_record))
  end

  test "should destroy tezt_record" do
    assert_difference('TeztRecord.count', -1) do
      delete :destroy, id: @tezt_record
    end

    assert_redirected_to tezt_records_path
  end
end
