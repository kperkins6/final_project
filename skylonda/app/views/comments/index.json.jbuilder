json.array!(@comments) do |comment|
  json.extract! comment, :id, :user_id, :post_id, :text, :date
  json.url comment_url(comment, format: :json)
end
