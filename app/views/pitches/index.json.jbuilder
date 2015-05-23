json.array!(@pitches) do |pitch|
  json.extract! pitch, :id, :number, :size, :used, :features, :campingsite_id
  json.url pitch_url(pitch, format: :json)
end
