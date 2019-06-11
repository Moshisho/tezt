json.extract! tezt_record, :id, :tezt_run_id, :name, :class_name, :tags, :active, :user_id, :team_id, :flaky, :risk, :avg_duration, :jira_test_id, :jira_bug_id, :created_at, :updated_at
json.url tezt_record_url(tezt_record, format: :json)
