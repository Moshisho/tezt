json.extract! failure, :id, :message, :stack_trace, :created_at, :updated_at
json.url failure_url(failure, format: :json)
