json.extract! user, :id, :name, :email, :notify_in_mail, :notify_in_sms, :notify_in_chat, :active, :chat_username, :team_id, :created_at, :updated_at
json.url user_url(user, format: :json)
