json.array!(@link_tables) do |link_table|
  json.extract! link_table, :id, :role_id, :name, :idea_id, :user_id, :platform_id
  json.url link_table_url(link_table, format: :json)
end
