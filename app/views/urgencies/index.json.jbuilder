json.array!(@urgencies) do |urgency|
  json.extract! urgency, :name
  json.url urgency_url(urgency, format: :json)
end