json.extract! collected_datum, :id, :turtle_id, :temperature, :deep, :light, :latitude, :longitude, :date, :created_at, :updated_at
json.url collected_datum_url(collected_datum, format: :json)
