json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :full_name
  json.url user_url(user, format: :json)
end
