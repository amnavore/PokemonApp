json.extract! pokemon, :id, :name, :location, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
