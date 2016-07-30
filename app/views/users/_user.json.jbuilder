json.extract! user, :id, :first_name, :last_name, :email, :fb_uid, :fb_token, :created_at, :updated_at
json.url user_url(user, format: :json)