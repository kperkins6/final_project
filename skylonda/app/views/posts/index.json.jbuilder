json.array!(@posts) do |post|
  json.extract! post, :id, :user_id, :board_id, :document, :image, :subject, :text
  json.url post_url(post, format: :json)
end
