json.array!(@platforms) do |platform|
  json.extract! platform, :id, :platformname, :idea_id
  json.url platform_url(platform, format: :json)
end
