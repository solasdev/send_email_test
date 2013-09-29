json.array!(@users) do |user|
  json.extract! user, :address
  json.url user_url(user, format: :json)
end
