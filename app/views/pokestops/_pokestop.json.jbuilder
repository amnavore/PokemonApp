json.extract! pokestop, :id, :name, :location, :created_at, :updated_at
json.url pokestop_url(pokestop, format: :json)
