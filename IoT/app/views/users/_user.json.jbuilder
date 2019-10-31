json.extract! user, :id, :name, :email, :password, :photo_id, :gender, :birthday, :telephone, :researcher, :career, :institution, :description, :created_at, :updated_at
json.url user_url(user, format: :json)
