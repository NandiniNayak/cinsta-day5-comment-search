json.extract! post, :id, :title, :description, :year_group, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)