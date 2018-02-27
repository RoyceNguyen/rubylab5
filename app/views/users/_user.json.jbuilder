json.extract! user, :id, :name, :email, :articles, :comments, :message, :user_id, :article_id, :created_at, :updated_at
json.url user_url(user, format: :json)
