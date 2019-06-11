json.extract! tezt_run, :id, :tezt_id, :status, :failure_id, :environment_id, :duration, :machine, :debug, :assets, :created_at, :updated_at
json.url tezt_run_url(tezt_run, format: :json)
