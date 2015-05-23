json.array!(@owners) do |owner|
  json.extract! owner, :id, :name, :address, :phonenumber
  json.url owner_url(owner, format: :json)
end
