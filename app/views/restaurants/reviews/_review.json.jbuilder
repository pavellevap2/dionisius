json.extract! review, :id, :title, :body, :restaurant_id, :created_at, :updated_at
json.url review_url(review, format: :json)
