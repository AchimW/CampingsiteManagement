json.array!(@campingsites) do |campingsite|
  json.extract! campingsite, :id, :name, :address, :features
  json.url campingsite_url(campingsite, format: :json)
end
