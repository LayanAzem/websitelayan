json.array!(@guardians) do |guardian|
  json.extract! guardian, :id, :firstname, :lastname, :occupation, :email, :contact, :number_of_children, :relationship_to_child, :preferredLanguage
  json.url guardian_url(guardian, format: :json)
end
