json.array!(@breweries) do |brewery|
  json.extract! brewery, :id, :brewery_id, :brewery_name, :brewery_city, :brewery_state, :lat, :lng
  json.url brewery_url(brewery, format: :json)
end
