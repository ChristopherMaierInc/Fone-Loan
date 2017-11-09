json.extract! message, :id, :message, :sender_id, :conversation_id, :created_at, :updated_at
json.url message_url(message, format: :json)
