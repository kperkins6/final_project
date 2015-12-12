json.array!(@boards) do |board|
  json.extract! board, :id, :user_id, :name, :date, :description, :level
  json.url board_url(board, format: :json)
end
