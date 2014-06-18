json.array!(@checkins) do |checkin|
  json.extract! checkin, :id, :checkin_id, :created_at, :rating_score, :uid, :bid, :brewery_id, :venue_city, :venue_state, :lat, :lng
  json.url checkin_url(checkin, format: :json)
end
