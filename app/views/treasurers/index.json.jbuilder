json.array!(@treasurers) do |treasurer|
  json.extract! treasurer, :name, :email
  json.url treasurer_url(treasurer, format: :json)
end