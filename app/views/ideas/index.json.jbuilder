json.array!(@ideas) do |idea|
  json.extract! idea, :id, :user_id, :title, :overview, :HelpNeeded
  json.url idea_url(idea, format: :json)
end
