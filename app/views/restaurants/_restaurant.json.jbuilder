json.extract! restaurant, :id, :name, :cuisine, :first_title, :description, :avatar, :specialization, :rating, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
