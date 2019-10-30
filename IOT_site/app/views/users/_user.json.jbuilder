json.extract! user, :id, :image, :name, :email, :sex, :description, :occupation, :institution, :created_at, :updated_at
json.url user_url(user, format: :json)
