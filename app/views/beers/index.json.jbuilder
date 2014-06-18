json.array!(@beers) do |beer|
  json.extract! beer, :id, :bid, :beer_name, :beer_abv, :beer_description, :beer_style, :is_in_production, :rating_count, :rating_score, :brewery_id
  json.url beer_url(beer, format: :json)
end
