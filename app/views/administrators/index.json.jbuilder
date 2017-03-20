json.array!(@administrators) do |administrator|
  json.extract! administrator, :id, :firstname, :lastname, :access_level, :contact, :school_id
  json.url administrator_url(administrator, format: :json)
end
