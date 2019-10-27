json.extract! user, :id, :user_id, :name, :email, :sex, :photo_id, :registration_date, :description, :occupation, :institution, :created_at, :updated_at
json.url user_url(user, format: :json)
