json.array!(@children) do |child|
  json.extract! child, :id, :firstname, :lastname, :age, :number_of_guardians, :grade, :class_number, :school_id
  json.url child_url(child, format: :json)
end
