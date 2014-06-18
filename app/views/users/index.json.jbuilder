json.array!(@users) do |user|
  json.extract! user, :id, :uid, :user_name, :location, :user_birthday
  json.url user_url(user, format: :json)
end
