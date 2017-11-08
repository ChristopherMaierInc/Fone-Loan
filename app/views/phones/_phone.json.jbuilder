json.extract! phone, :id, :brand, :model, :priceperweek, :condition, :created_at, :updated_at
json.url phone_url(phone, format: :json)
