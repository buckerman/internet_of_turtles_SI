json.extract! turtle_datum, :id, :turtle_id, :temperature, :light, :depth, :latitude, :longitude, :created_at, :updated_at
json.url turtle_datum_url(turtle_datum, format: :json)
